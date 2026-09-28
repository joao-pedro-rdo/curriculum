# CONTEXT — Sistema de Geração de Currículos

## Fonte da Verdade

`joaopedrordeo@hotmail.com` | (55) 99688-4436 | Alegrete – RS | [LinkedIn](https://www.linkedin.com/in/joaopedrordeo/) | [GitHub](https://github.com/joao-pedro-rdo)

## Glossário

### Currículo

O documento final entregue para a vaga, em formato Markdown. Padrão: 2 páginas, idioma padrão português (inglês quando a vaga pede). Estrutura centralizada nas experiências: Resumo → **Experiência** (cada cargo com linha `**Stacks:**` + atribuições/funções com stacks-chave em bold) → **Competências Adicionais** (competências/stacks complementares, o generalista) → Projetos → Formação → Cursos → Idiomas. O _conteúdo_ varia por vaga, a _estrutura_ não. Não há seção "Competências" isolada.

### Vaga

Descrição de uma posição para a qual o usuário vai se candidatar. Input tradicionalmente é o texto colado, às vezes um link. O usuário normalmente já fornece junto o nome da empresa/vaga; a skill infere o resto.

### Base de Conhecimento

O "master profile" do usuário: um arquivo único com todas as suas atribuições e habilidades, com subtópicos e sumário bem definido. **Formato híbrido**: cada item é descrito em prosa limpa (o que foi usado, como, para quê, e o máximo de impacto quantificável que houver); a skill decide a melhor forma de colocar no currículo a depender da vaga. Não é uma biblioteca de bullets.

### Skill

O artefato do opencode que sabe quais documentos ler e como gerar o .md do currículo. Deve ser desenvolvida **por último**, depois de a Base de Conhecimento estar completa. **Escopo**: selecionar, reordenar, reescrever (fielmente, sem inventar fatos), traduzir (PT↔EN) e produzir resumo dedicado à vaga. É uma skill **nova** (`curriculum`), independente da genérica `resume-optimizer` que já existe no repo.

### Seleção

O processo de escolher, da Base de Conhecimento, o que é relevante para a Vaga. Destaque de habilidades mais importantes para aquela vaga antes das demais.

### Registro de Carreira (fatos fixos do candidato)

Em aberto — a ser resolvido: o que é fato fixo (contato, cargos, datas, formação) vs o que é conteúdo selecionável.

### Padrões de Geração

Resumo: reescrito **se a vaga for distinta** do perfil atual; mantido caso contrário. 2 páginas; idioma auto-detectado da vaga; defaults PT/2 págs. Experiência é o coração: cada cargo lista `**Stacks:**` (linha dedicada) e atribuições/funções com stacks-chave em **bold**.

### Orientação de RH (Erick — conhecido em RH, set/2026)

Perspectiva externa capturada para calibrar a geração:

- **Resumo profissional** deve focar no **objetivo da vaga**, em estrutura híbrida: experiencias + stacks no resumo. Template sugerido: "formado em [curso] com X anos de experiência, passei por áreas A/B/C e atualmente focado em [alvo]. Amplo conhecimento com as stacks X/Y/Z, com projetos de destaque na empresa Y, trazendo benefícios como performance da infraestrutura, resiliência dos servidores etc."
- **CV por vaga**: focar no que a vaga exige; se a vaga é de back, colocar pontos fortes e projetos de back primeiro, mencionando os demais conhecimentos na sequência — mostra **especialista no que pedem + conhecimento generalista** (diferencial).
- **Métricas**: quantificar também projetos _do zero_ (eficiencia operacional de X% após produção, economia de X para a empresa, aumento de receita em Y, volume de usuários atendidos).

### Itens da Base (formato híbrido)

Cada item (competência/experiência/projeto) é descrito com o **máximo de informação** que o usuário conseguir registrar (o que foi usado, como, para quê, impacto quantificável). A skill gera a **melhor adaptação para a vaga sem inventar fatos**. A base não carrega ordem/precedência — é um catálogo fatual; reordenação/destaque são decisão da skill por vaga. **Sem tags/metadados**: a relevância é decidida por inferência semântica pura da skill sobre a prosa.

### Experiências (sub-itens)

As experiências são decompostas em **sub-itens numerados** (`4.3.5`), cada um com `Prosa + Impacto + Stacks` próprios. A skill seleciona os sub-itens relevantes à vaga, **agrega as Stacks** dos sub-itens escolhidos na linha `**Stacks:**` do cargo no currículo e deriva o texto com o impacto embutido na prosa. Projetos seguem o mesmo modelo (campo `**Stacks:**`).

### Intensidade de destaque

Três níveis, combináveis pela skill conforme a vaga: reordenação (colocar no topo da seção), **bold** em palavras-chave, e **ampliação** das frases de tópicos mais relevantes (ex.: em vaga DevOps, frases de infra são mais detalhadas que frases de liderança). Sem inflar as 2 páginas.

### Fatos fixos vs selecionável

Regra de 1 linha: "Tudo selecionável exceto identidade, cargos+datas, formação e idiomas."

### Saída

Um único arquivo `.md` por geração, no idioma da vaga; somente mais de um idioma se o usuário pedir. A skill mostra o caminho do arquivo (sem préview); o usuário revisa sozinho.

### Fluxo de uso (contrato)

Usuário cola a descrição da vaga (texto ou link), às vezes com nome da empresa/título. A skill, acionada em linguagem natural pelo nome `curriculum`, lê a Base, detecta o idioma, seleciona/reordena/reescreve (sem mentir), gera o `.md` e salva; ao final **propõe** atualizações da Base, mas não aplica (decisão de commit é do usuário).

---

## Dimensões resolvidas

- Base = arquivo único (master profile) em formato **híbrido prosa-limpa + impacto quantificado** ✔
- Skill nova `curriculum` (não adapta a `resume-optimizer`); escopo (d): selecionar+reordenar+reescrever+traduzir+resumo por vaga ✔
- Idiomas: base PT; saída no idioma da vaga ✔
- Estrutura do currículo: centralizada nas experiências (cada cargo com `**Stacks:**` + atribuições com bold); Competências solta vira **Competências Adicionais** após Experiências; 2 páginas ✔
- Versionamento: git; usuário decide quando commitar ✔
- Itens da base: prosa exaustiva (sem bullets prontos); skill adapta sem mentir ✔
- Experiências: decompostas em **sub-itens numerados** (Prosa+Impacto+Stacks); skill agrega stacks por cargo, Projetos com `**Stacks:**` ✔
- Resumo: reescrito só se a vaga for distinta ✔
- Resumo-master: padrão híbrido Erick (experiências + stacks focado no objetivo); skill adapta por vaga ✔
- Regra de ordem: **alvo primeiro, generalista depois** em todas as seções (Experiência, Resumo, Competências Adicionais) ✔
- Destaque: reordenação + bold + ampliação seletiva ✔
- Impacto: quantificar também projetos do zero (eficiência, economia/receita, volume de usuários) — campo único `Impacto` ✔
- Saída: 1 arquivo .md no idioma da vaga; sem préview ✔
- Skill futura: excluídos os `.txt` após compilação da base ✔
- `resume-optimizer` permanece intocada; skill própria é lida como referência de estilo ✔
- Relevância: **inferência semântica pura da skill** (sem tags na base) ✔
- Fatos fixos: identidade, cargos+datas, formação, idiomas; resto selecionável ✔
- Caminhos: `base/base.md` · `.agents/skills/curriculum/` · `curriculos/` ✔

## Dimensões ainda em aberto (não resolvidas)

- _Nenhuma em produção_ — levantar nova decisão se surgir durante o uso real.
