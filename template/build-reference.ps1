param(
  [string]$Pandoc = "C:\Users\joaop\AppData\Local\Pandoc\pandoc.exe",
  [string]$Out = "C:\Users\joaop\projects\curriculum\template\curriculo-reference.docx"
)

$ErrorActionPreference = "Stop"
$W = "http://schemas.openxmlformats.org/wordprocessingml/2006/main"
$root = "C:\Users\joaop\projects\curriculum\template"
$defaultRef = Join-Path $root "default-reference.docx"
$work = Join-Path $env:TEMP "curriculum-ref-build"

# 1. Recreate the default reference from pandoc (so script stays reproducible)
& $Pandoc -o $defaultRef --print-default-data-file reference.docx

# 2. Extract
if (Test-Path $work) { Remove-Item -Recurse -Force $work }
New-Item -ItemType Directory -Force -Path $work | Out-Null
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($defaultRef, $work)

# --- helpers -------------------------------------------------------------
function New-El($doc, $name, $attrs) {
  $e = $doc.CreateElement("w", $name, $W)
  if ($attrs) {
    foreach ($k in $attrs.Keys) {
      $a = $doc.CreateAttribute("w", $k, $W)
      $a.Value = [string]$attrs[$k]
      $e.Attributes.Append($a) | Out-Null
    }
  }
  return $e
}

function Get-Style($doc, $id) {
  foreach ($s in $doc.SelectNodes("//*[local-name()='style']")) {
    if ($s.GetAttribute("styleId", $W) -eq $id) { return $s }
  }
  return $null
}

function Clear-Children($el, $localName) {
  while ($el.SelectSingleNode("./*[local-name()='$localName']")) {
    $child = $el.SelectSingleNode("./*[local-name()='$localName']")
    $el.RemoveChild($child) | Out-Null
  }
}

# Build an rPr element: font, b, color, sz (all optional)
function New-RPr($doc, $font, $bold, $sz, $color) {
  $rPr = $doc.CreateElement("w", "rPr", $W)
  if ($font) {
    $rFonts = New-El $doc "rFonts" @{ ascii = $font; hAnsi = $font; eastAsia = $font; cs = $font }
    $rPr.AppendChild($rFonts) | Out-Null
  }
  if ($bold) { $rPr.AppendChild((New-El $doc "b" $null)) | Out-Null; $rPr.AppendChild((New-El $doc "bCs" $null)) | Out-Null }
  if ($color) { $rPr.AppendChild((New-El $doc "color" @{ val = $color })) | Out-Null }
  if ($sz) { $rPr.AppendChild((New-El $doc "sz" @{ val = $sz })) | Out-Null; $rPr.AppendChild((New-El $doc "szCs" @{ val = $sz })) | Out-Null }
  return $rPr
}

# Configure a paragraph style's rPr + pPr
# $pp: hashtable of pPr options: KeepNext, Before, After, Jc, OutlineLvl, Line, LineRule
function Set-PStyle($doc, $id, $font, $bold, $sz, $color, $pp) {
  $style = Get-Style $doc $id
  if (-not $style) { Write-Warning "style $id not found"; return }
  Clear-Children $style "pPr"
  Clear-Children $style "rPr"

  $rPr = New-RPr $doc $font $bold $sz $color

  $pPr = $doc.CreateElement("w", "pPr", $W)
  $order = @("KeepNext","Before","After","Line","LineRule","Jc","OutlineLvl")
  if ($pp.KeepNext) { $pPr.AppendChild((New-El $doc "keepNext" @{ val = "1" })) | Out-Null }
  if ($pp.ContainsKey("Before")) { $pPr.AppendChild((New-El $doc "spacing" @{ before = $pp.Before; after = $pp.After })) | Out-Null }
  elseif ($pp.ContainsKey("After")) { $pPr.AppendChild((New-El $doc "spacing" @{ before = "0"; after = $pp.After })) | Out-Null }
  if ($pp.ContainsKey("Line")) {
    $sp = $pPr.SelectSingleNode("./*[local-name()='spacing']")
    if (-not $sp) { $sp = New-El $doc "spacing" @{}; $pPr.AppendChild($sp) | Out-Null }
    $a = $doc.CreateAttribute("w","line",$W); $a.Value = [string]$pp.Line; $sp.Attributes.Append($a) | Out-Null
    $a = $doc.CreateAttribute("w","lineRule",$W); $a.Value = $pp.LineRule; $sp.Attributes.Append($a) | Out-Null
  }
  if ($pp.Jc) { $pPr.AppendChild((New-El $doc "jc" @{ val = $pp.Jc })) | Out-Null }
  if ($pp.ContainsKey("OutlineLvl")) { $pPr.AppendChild((New-El $doc "outlineLvl" @{ val = $pp.OutlineLvl })) | Out-Null }

  # schema order: pPr before rPr
  $style.AppendChild($pPr) | Out-Null
  $style.AppendChild($rPr) | Out-Null
}

function Set-CharStyle($doc, $id, $font, $bold, $sz, $color) {
  $style = Get-Style $doc $id
  if (-not $style) { return }
  Clear-Children $style "rPr"
  $style.AppendChild((New-RPr $doc $font $bold $sz $color)) | Out-Null
}

# --- edit styles.xml -----------------------------------------------------
$stylesPath = Join-Path $work "word\styles.xml"
$styles = New-Object System.Xml.XmlDocument
$styles.PreserveWhitespace = $true
$styles.Load($stylesPath)

# docDefaults: Aptos 10.5pt, black, no spacing after
$dd = $styles.SelectSingleNode("//*[local-name()='docDefaults']")
$rPrDefault = $dd.SelectSingleNode("./*[local-name()='rPrDefault']")
Clear-Children $rPrDefault "rPr"
$rPrDefault.AppendChild((New-RPr $styles "Aptos" $false 21 "000000")) | Out-Null
$pPrDefault = $dd.SelectSingleNode("./*[local-name()='pPrDefault']")
Clear-Children $pPrDefault "pPr"
$pPrDefault.AppendChild((New-El $styles "spacing" @{ after = "0" })) | Out-Null

# Body + compact text styles (justified)
Set-PStyle $styles "Normal"         "Aptos" $false 21 "000000" @{ After = "0"; Jc = "both" }
Set-PStyle $styles "BodyText"       "Aptos" $false 21 "000000" @{ Before = "0"; After = "0"; Jc = "both" }
Set-PStyle $styles "Compact"        "Aptos" $false 21 "000000" @{ Before = "0"; After = "0"; Jc = "both" }
Set-PStyle $styles "FirstParagraph" "Aptos" $false 21 "000000" @{ After = "0"; Jc = "both" }

# Name (H1) -> 14pt bold centered
Set-PStyle $styles "Heading1" "Aptos" $true  28 "000000" @{ KeepNext = $true; Before = "0"; After = "20"; Jc = "center"; OutlineLvl = "0" }
# Section (H2) -> 10.5pt bold
Set-PStyle $styles "Heading2" "Aptos" $true  21 "000000" @{ KeepNext = $true; Before = "140"; After = "40"; OutlineLvl = "1" }
# Role (H3) -> 10.5pt bold
Set-PStyle $styles "Heading3" "Aptos" $true  21 "000000" @{ KeepNext = $true; Before = "100"; After = "20"; OutlineLvl = "2" }
# Title (metadata) -> 14pt bold centered
Set-PStyle $styles "Title" "Aptos" $true 28 "000000" @{ Jc = "center"; After = "0"; Line = "240"; LineRule = "auto" }

# Linked character styles (avoid blue/theme leakage)
Set-CharStyle $styles "Heading1Char" "Aptos" $true 28 "000000"
Set-CharStyle $styles "Heading2Char" "Aptos" $true 21 "000000"
Set-CharStyle $styles "Heading3Char" "Aptos" $true 21 "000000"
Set-CharStyle $styles "TitleChar"    "Aptos" $true 28 "000000"

$styles.Save($stylesPath)

# --- edit document.xml: page size Letter + 0.6in margins ------------------
$docPath = Join-Path $work "word\document.xml"
$doc = New-Object System.Xml.XmlDocument
$doc.PreserveWhitespace = $true
$doc.Load($docPath)
$sectPr = $doc.SelectSingleNode("//*[local-name()='body']/*[local-name()='sectPr']")
if (-not $sectPr) {
  $sectPr = $doc.CreateElement("w", "sectPr", $W)
  $doc.SelectSingleNode("//*[local-name()='body']").AppendChild($sectPr) | Out-Null
}
Clear-Children $sectPr "pgSz"
Clear-Children $sectPr "pgMar"
$footnote = $sectPr.SelectSingleNode("./*[local-name()='footnotePr']")
$pgSz = New-El $doc "pgSz" @{ w = "12240"; h = "15840"; orient = "portrait" }
$pgMar = New-El $doc "pgMar" @{ top = "864"; right = "864"; bottom = "864"; left = "864"; header = "720"; footer = "720"; gutter = "0" }
if ($footnote) {
  $sectPr.InsertAfter($pgMar, $footnote) | Out-Null
  $sectPr.InsertAfter($pgSz, $footnote) | Out-Null
} else {
  $sectPr.AppendChild($pgSz) | Out-Null
  $sectPr.AppendChild($pgMar) | Out-Null
}
$doc.Save($docPath)

# --- rezip ---------------------------------------------------------------
if (Test-Path $Out) { Remove-Item -Force $Out }
[System.IO.Compression.ZipFile]::CreateFromDirectory($work, $Out)
Write-Output "OK -> $Out"