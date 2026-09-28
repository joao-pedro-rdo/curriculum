# Base de Conhecimento — João Pedro Ramos de Oliveira

> O "master profile" do candidato. Formato híbrido: cada item é prosa limpa do **máximo de informação** (o que foi usado, como, para quê, resultados mensuráveis). A skill `curriculum` gera a melhor adaptação para cada vaga **sem inventar fatos**.
>
> **Regras de preenchimento:**
>
> - Sem ordem de prioridade aqui — é um catálogo fatual. A skill reordena/destaca por vaga.
> - Sem tags/metadados — relevância é inferida pela skill pela leitura da prosa.
> - `Impacto` é campo único, **sempre que houver número**: eficiência operacional (ex.: -50% tempo de detecção), economia/receita (ex.: economia de R$X, aumento de receita em Y%), volume (ex.: 50+ câmeras, N usuários).
> - **Experiências são decompostas em sub-itens numerados** (`4.3.3`), cada um com `Prosa + Impacto + Stacks` próprios. A skill seleciona os sub-itens relevantes à vaga, agrega as Stacks deles na linha `**Stacks:**` do cargo e deriva o texto com o impacto embutido. O mesmo modelo vale para Projetos (campo `**Stacks:**`).

---

## Índice

- [1. Identidade e Contato](#1-identidade-e-contato)
- [2. Resumo Profissional](#2-resumo-profissional)
- [3. Adicionais (Competências Complementares)](#3-adicionais-competências-complementares)
- [4. Experiências](#4-experiências)
- [5. Projetos](#5-projetos)
- [6. Formação](#6-formação)
- [7. Cursos](#7-cursos)
- [8. Idiomas](#8-idiomas)

---

## 1. Identidade e Contato

_(Fatos fixos — sempre presentes no currículo, não selecionáveis.)_

| Campo       | Valor                                      |
| ----------- | ------------------------------------------ |
| Nome        | João Pedro Ramos de Oliveira               |
| Localização | Alegrete – RS                              |
| Telefone    | (55) 99688-4436                            |
| E-mail      | joaopedrordeo@hotmail.com                  |
| LinkedIn    | https://www.linkedin.com/in/joaopedrordeo/ |
| GitHub      | https://github.com/joao-pedro-rdo          |

---

## 2. Resumo Profissional

_(Resumo-master no padrão híbrido Erick: experiências + stacks, focado no objetivo. A skill reescreve/adapta por vaga — troca o "alvo", reordena stacks, cita o projeto mais relevante. Prosa em 1º pessoa; a skill ajusta para 3º no currículo se quiser.)_

**Prosa-master:**

> Profissional de Infraestrutura e DevOps com mais de 5 anos de experiência em TI, atuando em ambientes on-premises com servidores físicos (Dell PowerEdge, HPE, Lenovo), Linux, virtualização Proxmox, automação e observabilidade. Atualmente, como Analista de Infraestrutura no Exército Brasileiro, lidero projetos de modernização com Proxmox, Docker, Ansible e Terraform, com foco em disponibilidade e automação de operações. Experiência prática com as stacks Linux, Proxmox, Ansible, Terraform, Python, Docker, Zabbix, Grafana, Git e GitHub Actions, incluindo o ciclo operacional completo de VMs e containers, monitoramento, backup/restore e resposta a incidentes, além de projetos próprios de IaC (infraestrutura como código) versionados no GitHub. Graduado em Ciência da Computação (UNIPAMPA), com experiência adicional em desenvolvimento de software full stack (TypeScript/NestJS, React) e CI/CD.

---

## 3. Adicionais (Competências Complementares)

_(O "generalista": stacks e habilidades que aparecem em vários cargos ou que complementam as experiências. Não é seção isolada no currículo — vira o campo `Adicionais` após as Experiências, na ordem que a skill decidir por vaga. Sem order aqui.)_

### 3.1 Programação e Scripting

**Prosa:** Python, Shell Script, TypeScript, JavaScript; desenvolvimento de automações, scripts de manutenção e implantação, e aplicações web full stack.

**Impacto:**

### 3.2 Containers e Orquestração

**Prosa:** Docker (imagens, containers, compose), LXC no Proxmox; noções de Kubernetes via laboratório Terraform na DigitalOcean.

**Impacto:**

### 3.3 Cloud e Infraestrutura moderna

**Prosa:** Provisionamento de cluster Kubernetes na DigitalOcean com Terraform e backend remoto (HashiCorp Platform); CI/CD com GitHub Actions e self-hosted runners; acesso remoto via Cloudflare Zero Trust e Tailscale.

**Impacto:**

### 3.4 Redes e Segurança

**Prosa:** Redes de infraestrutura (cabeamento estruturado, CFTV), serviços de rede, IPAM (Bagre), proxy reverso Traefik (SSL, autenticação), criptografia e autenticação JWT em aplicações, agentes Zabbix e Teleport, controle de VPN e proxy.

**Impacto:**

### 3.5 Liderança Técnica e Gestão

**Prosa:** Liderança técnica da equipe de TI: distribuição de demandas, acompanhamento de execução, condução de projetos de infraestrutura, adoção de novas ferramentas e orientação/treinamento de colegas (suporte nível 3, orientação de nível 2). Gestão do ciclo de vida de projetos de TI, incluindo planejamento técnico, escopo e aquisição de materiais.

**Impacto:**

---

## 4. Experiências

_(Cargos mais antigo → mais recente na base. Fatos fixos: cargo + datas sempre presentes. Conteúdo selecionável: quais sub-itens entram e com que destaque. A linha `**Stacks:**` do cargo no currículo é derivada pela skill dos sub-itens selecionados.)_

### 4.1 Soldado | Auxiliar de Suporte de TI | mar/2021 – abr/2022

**Cargo:** Soldado — Auxiliar de Suporte de TI
**Empresa:** Exército Brasileiro
**Datas:** mar/2021 – abr/2022
**Local:** Alegrete – RS

#### 4.1.1 Suporte nível 1 e manutenção

**Prosa:** Instalação e configuração de sistemas Windows/Linux, formatações e configuração de software conforme os padrões internos, suporte nível 1 aos usuários e manutenção de computadores.

**Impacto:**
**Stacks:** Windows, Linux

#### 4.1.2 Automação de backups

**Prosa:** Automação de rotinas de backup de máquinas virtuais com scripts em Shell no Agendador de Tarefas do Windows, incluindo a organização e retenção dos backups armazenados (quais eram mantidos por dia e quais não). Quando entrei, a organização ainda não usava hipervisor e o backup era manual; a tarefa me foi atribuída e posteriormente, com autonomia, migrei o ambiente para Proxmox.

**Impacto:** Deixou-se de fazer backup manual e passou-se a ter backup automático.

**Stacks:** Shell Script, Agendador de Tarefas do Windows (Task Scheduler)

#### 4.1.3 Infraestrutura física

**Prosa:** Colaboração com a equipe de TI em manutenção de sistemas de CFTV e organização de cabeamento estruturado.

**Impacto:**
**Stacks:** cabeamento estruturado, CFTV

### 4.2 Cabo | Suporte em TI | abr/2022 – ago/2023

**Cargo:** Cabo — Suporte em TI
**Empresa:** Exército Brasileiro
**Datas:** abr/2022 – ago/2023
**Local:** Alegrete – RS

#### 4.2.1 Suporte e troubleshooting nível 1 e 2

**Prosa:** Suporte técnico nos níveis 1 e 2 em ambientes Windows e Linux: atendimento de incidentes de infraestrutura, diagnóstico e resolução de problemas de software e hardware, presencial e remotamente, como ponto de referência para os usuários.

**Impacto:**
**Stacks:** Windows, Linux

#### 4.2.2 Administração de sistemas internos da OM

**Prosa:** Administração de sistemas internos da Organização Militar, garantindo disponibilidade e bom funcionamento dos serviços usados no dia a dia.

**Impacto:**
**Stacks:** Linux, serviços de rede

#### 4.2.3 Infraestrutura física e redes

**Prosa:** Instalação de sistemas de CFTV, montagem e manutenção de cabeamento estruturado e racks de servidores, assegurando a base operacional da rede; montagem e manutenção completa do parque de computadores da organização.

**Impacto:**
**Stacks:** cabeamento estruturado, CFTV, redes

### 4.3 3º Sargento | Analista de Infraestrutura | set/2023 – atual

**Cargo:** 3º Sargento — Analista de Infraestrutura
**Empresa:** Exército Brasileiro
**Datas:** set/2023 – atual
**Local:** Alegrete – RS

#### 4.3.1 Infraestrutura on-premises e virtualização

**Prosa:** Administração de infraestrutura on-premises: servidores físicos Dell PowerEdge, HPE e Lenovo, sistemas Linux e virtualização com Proxmox (VMs, containers LXC e Docker). Ciclo operacional completo de VMs e containers: provisionamento, configuração, atualização, migração, monitoramento e troubleshooting. Quando entrei, a organização não usava hipervisor e os processos eram manuais; fui responsável por estruturar a virtualização e, posteriormente, a migração para Proxmox (ver Projeto 5.2).

**Impacto:**
**Stacks:** Linux, Proxmox, LXC, Docker, RAID, servers bare-metal (Dell PowerEdge, HPE, Lenovo)

#### 4.3.2 Automação e Infraestrutura como Código

**Prosa:** Desenvolvimento e manutenção de automações com Ansible para instalação de pacotes, configuração de sistemas operacionais, gerenciamento de usuários, deployment de serviços, aplicação de patches, configuração de rede e de proxy e implantação de agentes (Zabbix e Teleport). Provisionamento automatizado de containers com Terraform e Ansible, garantindo rastreabilidade e versionamento de mudanças.

**Impacto:** Provisionamento automatizado de ambientes, reduzindo erros manuais.
**Stacks:** Ansible, Terraform, Python, Shell Script, Zabbix agent, Teleport, IaC

#### 4.3.3 Monitoramento e observabilidade

**Prosa:** Implementação e operação de monitoramento com Zabbix e Grafana: coleta de métricas, dashboards, alertas em tempo real, investigação de incidentes e resolução de falhas, incluindo alertas no celular para resposta ágil. Centralização de logs com Loki.

**Impacto:** Redução de mais de 50% no tempo médio de detecção e resolução de falhas em sistemas críticos; maior rastreabilidade de incidentes via logs centralizados.
**Stacks:** Zabbix, Grafana, Loki

#### 4.3.4 Backup e continuidade operacional

**Prosa:** Administração de rotinas de backup de ambientes virtualizados com Proxmox Backup Server e utilização de RAID em servidores, apoiando a recuperação de workloads e a continuidade operacional.

**Impacto:**
**Stacks:** Proxmox Backup Server, RAID

#### 4.3.5 IAM e autenticação centralizada

**Prosa:** Condução do IAM da Organização Militar: uso de UCS (Univention Corporate Server) para prover AD e LDAP, com autenticação via Kerberos nas máquinas Ubuntu e aplicação de GPOs no Ubuntu (ferramenta BOR) e no Windows (RSAT). Integração do LDAP/AD a sistemas compatíveis como Nextcloud e GLPI; para sistemas sem integração direta, uso de serviço intermediário (Authentik) para autenticação via OAuth2 nos serviços web da OM. Também realizei diversas implantações de sistemas para apoiar o fluxo administrativo da OM.

**Impacto:** Autenticação centralizada e reutilizável em toda a OM, eliminando credenciais fragmentadas.
**Stacks:** AD, LDAP, Kerberos, UCS, GPO (BOR, RSAT), Nextcloud, GLPI, Authentik, OAuth2

#### 4.3.6 Desenvolvimento de software interno

**Prosa:** Desenvolvimento de software para atender necessidades específicas da OM, incluindo o Sistema de Controle de Acesso (ver Projeto 5.6).

**Impacto:** Ver Impacto do Projeto 5.6.
**Stacks:** JavaScript, React, Docker, GitHub Actions

#### 4.3.7 Liderança técnica, suporte nível 3 e treinamento

**Prosa:** Liderança técnica da equipe de TI: distribuição de demandas, acompanhamento da execução de atividades e condução de projetos de infraestrutura e adoção de novas ferramentas. Prestação de suporte nível 3, orientação do suporte nível 2 e treinamento da equipe para esses níveis de atendimento.

**Impacto:**
**Stacks:** — (capacidade de gestão e liderança)

#### 4.3.8 Gestão de projetos e aquisições

**Prosa:** Gestão do ciclo de vida de projetos de TI, incluindo planejamento técnico de instalações de rede e CFTV, definição de escopo e processo de aquisição de materiais, garantindo entrega dentro do prazo e do orçamento.

**Impacto:**
**Stacks:** gestão de projetos, rede, CFTV

#### 4.3.9 Controle de VPN e proxy de rede

**Prosa:** Controle do uso de VPN e do proxy de rede da OM, garantindo segurança e conformidade nos acessos.

**Impacto:**
**Stacks:** VPN, proxy

#### 4.3.10 Administração de rede com PfSense

**Prosa:** Administração da rede da OM com PfSense virtualizado: configuração de DHCP estático e dinâmico, DNS local e portal captive para autenticação e controle de acesso dos usuários à rede.

**Impacto:** Atendimento a cerca de 150 dispositivos conectados à rede.

**Stacks:** PfSense, DHCP, DNS, Portal Captive

### 4.4 Desenvolvedor Full Stack | out/2025 – jul/2026

**Cargo:** Desenvolvedor Full Stack (bolsista)
**Empresa:** Universidade Federal do Pampa (UNIPAMPA) — projeto para a Secretaria de Saúde de Jaguari
**Datas:** out/2025 – jul/2026
**Local:** Alegrete – RS

#### 4.4.1 Desenvolvimento Web

**Prosa:** Desenvolvimento web para a Secretaria de Saúde de Jaguari com TypeScript e framework NestJS em arquitetura modular: APIs REST com autenticação OAuth2 (Google) e JWT com refresh token, filas com Redis para disparo de notificações por WhatsApp e e-mail via SMTP, banco de dados Firebase posteriormente migrado para PostgreSQL, e cobertura de testes unitários com Vitest. Frontend em React. Uso de Traefik como proxy reverso para disponibilizar a aplicação em HTTPS.

**Impacto:**
**Stacks:** TypeScript, NestJS, React, Redis, SMTP, WhatsApp Business API, OAuth2, JWT, Firebase, PostgreSQL, Vitest, Traefik

#### 4.4.2 Infraestrutura e entrega (CI/CD)

**Prosa:** Infraestrutura de entrega com GitHub Actions e self-hosted runners com integração de CI/CD: deploy em servidor físico da Secretaria de Saúde de Jaguari e ambiente de homologação em VPS da Oracle. Acesso ao ambiente de homologação e monitoramento inicialmente via Cloudflare Zero Trust com tokens de serviço, posteriormente migrado para Tailscale.

**Impacto:** Entregas automatizadas e consistentes entre homologação e produção.
**Stacks:** GitHub Actions, self-hosted runners, Docker, Cloudflare Zero Trust, Tailscale, VPS Oracle

---

## 5. Projetos

_(Projetos reais — incluindo projetos do zero. A skill escolhe quais entram e o nível de detalhe por vaga. Sem ordem na base.)_

### 5.1 Sistema de Monitoramento com Frigate NVR | 2024 | Exército Brasileiro

**Contexto:** Integrar, gerenciar e monitorar câmeras de segurança de diferentes fabricantes de forma confiável, garantindo melhor revisão de imagens e alertas em tempo real, em ambiente on-premise.

**Prosa (o que/como/para quê):**

- Implantação do Frigate NVR em containers Docker sobre servidor Linux dedicado.
- Proxy reverso e roteamento com Traefik (rotas seguras, certificados SSL e autenticação de usuários), posteriormente migrado para Teleport Zero Trust, garantindo acesso centralizado aos recursos com rastreabilidade e segurança reforçada com 2FA.
- Observabilidade e monitoramento integrando Zabbix e Grafana para coleta de métricas, dashboards e alertas em tempo real, incluindo alertas de câmeras IP sem conexão disparados no celular para correção ágil.
- CI/CD automatizado com GitHub Actions, automatizando atualizações de containers e implantação de novas versões da aplicação.
- Treinamento de um modelo YOLO11s para classificação de veículos (caminhão, carro, moto), civis e militares (5t, Marruá, M113), integrado ao monitoramento por câmeras.

**Impacto (se houver):**

- Centralização do gerenciamento de mais de 50 câmeras de diferentes fabricantes.
- Otimização do uso de servidores para reduzir custos com hardware dedicado.
- Alta disponibilidade via monitoramento proativo e alertas em tempo real; acesso rápido a gravações para auditorias de segurança.

**Stacks:** Docker, Linux, Traefik, Teleport, Zabbix, Grafana, GitHub Actions, YOLO11s

### 5.2 Migração de Servidores para Proxmox VE | 2023 | Exército Brasileiro

**Contexto:** Liderei a migração da infraestrutura de virtualização legada (VirtualBox) para Proxmox VE, resolvendo limitações críticas de escalabilidade e garantindo conformidade com diretrizes de software livre.

**Prosa (o que/como/para quê):**

- Análise da infraestrutura, definição de estratégias de backup, configuração do ambiente Proxmox e migração dos servidores, garantindo integridade dos dados e minimizando o tempo de inatividade.
- Uso de Teleport para acesso ao Proxmox, garantindo rastreabilidade dos acessos.

**Impacto (se houver):**

- Implantação de ambiente de virtualização robusto com gerenciamento centralizado web, em conformidade com os requisitos da organização, aumentando a eficiência na gestão dos servidores.

**Stacks:** Proxmox VE, VirtualBox, Teleport, backup

### 5.3 Infraestrutura como Código — Proxmox + Terraform + Ansible | contínuo | Projeto pessoal (lab)

**Contexto:** Automatizar a criação e configuração de containers LXC no Proxmox utilizando IaC, com foco em ambientes on-premises.

**Prosa (o que/como/para quê):**

- Provisionamento de infraestrutura com Terraform e configuração com Ansible, garantindo rastreabilidade e versionamento de mudanças.

**Impacto (se houver):**

**Stacks:** Terraform, Ansible, Proxmox, LXC

**Links (se houver):** https://github.com/joao-pedro-rdo/lab-proxmox-terraform-ansible

### 5.4 SentinelCI — GitHub Action para análise de Dockerfiles | contínuo | TCC

**Contexto:** Desenvolver uma Action integrada ao GitHub Actions em TypeScript para análise estática de Dockerfiles e sugestões de boas práticas usando heurísticas e pipeline multi-agente de IA.

**Prosa (o que/como/para quê):**

- Desenvolvimento de uma Action integrada ao GitHub Actions em TypeScript para análise estática de Dockerfiles e sugestões de boas práticas usando heurísticas e pipeline multi-agente de IA.

**Impacto (se houver):** Melhorar a qualidade de Dockerfiles e reduzir vulnerabilidades e maus cheiros de código em Dockerfiles, aumentando a segurança e a eficiência do processo de desenvolvimento de software, reduzindo o custo de análise com IA utilizando heurísticas predefinidas.

**Stacks:** TypeScript, GitHub Actions, Docker, Dockerfile, Agno, Python, API REST, Workflow, Agentes de IA

**Links (se houver):** https://github.com/joao-pedro-rdo/SentinelCI

### 5.5 Terraform + Kubernetes (DigitalOcean) | contínuo | Projeto pessoal (lab)

**Contexto:** Laboratório de provisionamento e destruição de cluster Kubernetes na DigitalOcean usando Terraform, com backend remoto na HashiCorp Platform.

**Prosa (o que/como/para quê):**

- Provisionamento do cluster via IaC com workflow de automação e notificações.

**Impacto (se houver):**

**Stacks:** Terraform, Kubernetes, DigitalOcean, HashiCorp Platform

**Links (se houver):** https://github.com/joao-pedro-rdo/terraform-kubernetes-dg

### 5.6 Sistema de Controle de Acesso | 2025 – presente | Exército Brasileiro

**Contexto:** Aplicação web para gerenciamento de acesso de visitantes e funcionários terceirizados, visando aprimorar segurança e rastreabilidade na Organização Militar.

**Prosa (o que/como/para quê):**

- API REST em JavaScript com autenticação segura via tokens JWT em cookies HttpOnly e criptografia das imagens de identificação dos usuários; frontend em React.js.
- Pipeline de deploy automatizado para múltiplos ambientes (desenvolvimento e produção) com Docker e GitHub Actions, garantindo agilidade e consistência nas entregas.
- Leitura de QR code via leitor físico e também via câmera para identificação de veículos e funcionários terceirizados, agilizando o registro de entrada e saída.

**Impacto (se houver):**

- Digitalizou e automatizou o controle de acesso, eliminando erros de preenchimento manual e reduzindo o tempo de registro em mais de 70%.
- Banco de dados centralizado com rastreabilidade completa e auditoria instantânea do pessoal.

**Stacks:** JavaScript, React, JWT, Docker, GitHub Actions

---

## 6. Formação

_(Fatos fixos — sempre presentes.)_

| Formação                                 | Instituição                              | Período      |
| ---------------------------------------- | ---------------------------------------- | ------------ |
| Bacharelado em Ciência da Computação     | Universidade Federal do Pampa (UNIPAMPA) | 2020 – 2026  |
| Disciplinas de Mestrado (aluno especial) | Universidade Federal do Pampa (UNIPAMPA) | 2026 – atual |
| Técnico em Informática                   | Instituto Federal Farroupilha (IFFar)    | 2017 – 2019  |

---

## 7. Cursos

_(Cursos/certificações com ou sem credencial. Selecionáveis pela skill conforme a vaga.)_

- Ansible — [instituição] · [ano] · [credencial]
- Git e GitHub — [instituição] · [ano] · [credencial]
- GitHub e GitHub Actions — [instituição] · [ano] · [credencial]
- Docker — [instituição] · [ano] · [credencial]
- Inglês — Senac RS · 2013 – 2018

---

## 8. Idiomas

_(Fatos fixos quanto ao que existe; nível declarado é referência — o usuário calibra por vaga ao pedir.)_

| Idioma    | Nível                                       |
| --------- | ------------------------------------------- |
| Português | Nativo                                      |
| Inglês    | Intermediário |
