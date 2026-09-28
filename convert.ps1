param(
  [string]$Path = "",
  [string]$Pandoc = "C:\Users\joaop\AppData\Local\Pandoc\pandoc.exe"
)

$ErrorActionPreference = "Stop"
$W = "http://schemas.openxmlformats.org/wordprocessingml/2006/main"
$Root = "C:\Users\joaop\projects\curriculum"
$RefDoc = Join-Path $Root "template\curriculo-reference.docx"

# Resolve input .md
if (-not $Path) {
  $Path = Get-ChildItem (Join-Path $Root "curriculos") -Filter "*.md" |
    Sort-Object LastWriteTime -Descending | Select-Object -First 1 -ExpandProperty FullName
}
if (-not $Path -or -not (Test-Path -LiteralPath $Path)) {
  Write-Error "Arquivo .md nao encontrado."
  exit 1
}
$md = (Resolve-Path -LiteralPath $Path).Path
$out = [System.IO.Path]::ChangeExtension($md, ".docx")

if (-not (Test-Path -LiteralPath $RefDoc)) {
  Write-Error "Reference-doc ausente: $RefDoc — rode template\build-reference.ps1 primeiro."
  exit 1
}

# 1. Markdown -> DOCX via pandoc com o template de estilo
& $Pandoc $md -f markdown -t docx --reference-doc $RefDoc -o $out
if ($LASTEXITCODE -ne 0) { Write-Error "pandoc falhou."; exit 1 }

# 2. Pos-processamento: centralizar o bloco de cabecalho (paragrafos entre H1 e o primeiro H2)
$work = Join-Path $env:TEMP ("cv-post-" + [System.IO.Path]::GetFileNameWithoutExtension($md))
if (Test-Path $work) { Remove-Item -Recurse -Force $work }
New-Item -ItemType Directory -Force -Path $work | Out-Null
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($out, $work)

$docPath = Join-Path $work "word\document.xml"
$doc = New-Object System.Xml.XmlDocument
$doc.PreserveWhitespace = $true
$doc.Load($docPath)

$paras = $doc.SelectNodes("//*[local-name()='body']/*[local-name()='p']")
$sawH1 = $false
$sawH2 = $false
foreach ($p in $paras) {
  $effStyle = ""
  $pPr = $p.SelectSingleNode("./*[local-name()='pPr']")
  if ($pPr) {
    $pStyle = $pPr.SelectSingleNode("./*[local-name()='pStyle']")
    if ($pStyle) { $effStyle = $pStyle.GetAttribute("val", $W) }
  }
  if (-not $sawH1) {
    if ($effStyle -eq "Heading1") { $sawH1 = $true }
    continue
  }
  if ($sawH2) { break }
  if ($effStyle -eq "Heading2") { $sawH2 = $true; break }
  # paragrafo dentro do bloco de cabecalho -> centralizar
  if (-not $pPr) {
    $pPr = $doc.CreateElement("w", "pPr", $W)
    $p.InsertBefore($pPr, $p.FirstChild) | Out-Null
  }
  $jc = $pPr.SelectSingleNode("./*[local-name()='jc']")
  if (-not $jc) {
    $jc = $doc.CreateElement("w", "jc", $W)
    [void]$jc.SetAttribute("val", $W, "center")
    $pPr.AppendChild($jc) | Out-Null
  } else {
    [void]$jc.SetAttribute("val", $W, "center")
  }
}
$doc.Save($docPath)

Remove-Item -Force $out
[System.IO.Compression.ZipFile]::CreateFromDirectory($work, $out)
Remove-Item -Recurse -Force $work

Write-Output "DOCX -> $out"