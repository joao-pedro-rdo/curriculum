# LinkedIn — João Pedro Ramos de Oliveira

## Título (headline)

Analista de Infraestrutura | DevOps & Automação (Linux · Proxmox · Ansible · Terraform · Zabbix)

## Sobre

Sou Analista de Infraestrutura com mais de 5 anos de experiência em TI, atuando em ambientes on-premises e híbridos. Formado em Ciência da Computação pela UNIPAMPA, trabalho hoje no Exército Brasileiro liderando projetos de modernização com Proxmox, Docker, Ansible e Terraform, com foco em disponibilidade e automação de operações.

Minha atuação cobre o ciclo completo da infraestrutura: servidores físicos (Dell PowerEdge, HPE, Lenovo), Linux e Windows Server (AD, GPO, LDAP), virtualização (Proxmox), automação e infraestrutura como código (Ansible, Terraform, Python/Bash), observabilidade (Zabbix, Grafana, Loki), backup (Proxmox Backup Server, RAID), redes (PfSense, VPN, DNS, DHCP) e segurança/identidade (Kerberos, OAuth2, Authentik).

Destaques da minha trajetória: liderei a migração da virtualização legada (VirtualBox) para Proxmox VE; implementei monitoramento com Zabbix/Grafana que reduziu em mais de 50% o tempo de detecção e resolução de falhas; e conduzo o IAM da organização com AD/LDAP e autenticação centralizada.

Também tenho experiência em desenvolvimento full stack (TypeScript/NestJS, React), CI/CD (GitHub Actions) e containers/orquestração (Docker, noções de Kubernetes), o que me dá uma visão completa entre infraestrutura e software.

## Experiência

### 3º Sargento — Analista de Infraestrutura | Exército Brasileiro

set/2023 – atual · Alegrete – RS

- Administração de infraestrutura on-premises: servidores físicos Dell PowerEdge, HPE e Lenovo, Linux e virtualização com Proxmox (VMs, containers LXC e Docker), cobrindo provisionamento, configuração, atualização, migração e troubleshooting. Estruturei a virtualização e liderei a migração para Proxmox.
- Desenvolvimento de automações com Ansible (instalação de pacotes, configuração de SOs, gerenciamento de usuários, deployment, patches, rede/proxy e implantação de agentes Zabbix/Teleport) e provisionamento automatizado com Terraform, reduzindo erros manuais.
- Implementação e operação de monitoramento com Zabbix, Grafana e Loki (métricas, dashboards, alertas em tempo real e centralização de logs), reduzindo em mais de 50% o tempo médio de detecção e resolução de falhas.
- Administração de rotinas de backup com Proxmox Backup Server e RAID, garantindo recuperação de workloads e continuidade operacional.
- Condução do IAM da organização com AD/LDAP (UCS) e Kerberos, aplicação de GPOs (BOR no Linux, RSAT no Windows) e integração de sistemas (Nextcloud, GLPI), com autenticação OAuth2 via Authentik.
- Administração de rede com PfSense virtualizado (DHCP estático e dinâmico, DNS local e portal captive), atendendo cerca de 150 dispositivos; controle de VPN e proxy.
- Desenvolvimento de software interno, incluindo o Sistema de Controle de Acesso (API REST, React, Docker, GitHub Actions).
- Liderança técnica da equipe de TI, suporte nível 3, orientação do nível 2, treinamento e gestão de projetos de infraestrutura e aquisições.

**Principais tecnologias:** Linux, Windows Server (AD/GPO/LDAP), Proxmox, Ansible, Terraform, Python, Shell Script, Docker, Zabbix, Grafana, Loki, PfSense, VPN, Proxmox Backup Server, Kerberos, OAuth2.

### Desenvolvedor Full Stack (bolsista) | UNIPAMPA — Secretaria de Saúde de Jaguari

out/2025 – jul/2026 · Alegrete – RS

- Desenvolvimento web com TypeScript e NestJS em arquitetura modular: APIs REST com OAuth2 (Google) e JWT (refresh token), filas com Redis para notificações via WhatsApp e e-mail (SMTP), banco PostgreSQL e testes unitários com Vitest; frontend em React e proxy reverso Traefik (HTTPS).
- Infraestrutura de entrega com GitHub Actions e self-hosted runners (CI/CD), deploy em servidor físico e ambiente de homologação em VPS Oracle, com acesso via Cloudflare Zero Trust e Tailscale.

**Principais tecnologias:** TypeScript, NestJS, React, Redis, PostgreSQL, OAuth2, JWT, GitHub Actions, Docker, Tailscale.

### Cabo — Suporte em TI | Exército Brasileiro

abr/2022 – ago/2023 · Alegrete – RS

- Suporte técnico nível 1 e 2 em ambientes Windows e Linux: atendimento de incidentes, diagnóstico e resolução de problemas de software e hardware, presencial e remotamente, como ponto de referência dos usuários.
- Administração de sistemas internos da organização, garantindo disponibilidade dos serviços do dia a dia.
- Instalação de CFTV, cabeamento estruturado e montagem/manutenção de racks de servidores e do parque de computadores.

**Principais tecnologias:** Windows, Linux, serviços de rede, cabeamento estruturado, CFTV.

### Soldado — Auxiliar de Suporte de TI | Exército Brasileiro

mar/2021 – abr/2022 · Alegrete – RS

- Instalação e configuração de sistemas Windows/Linux, suporte nível 1 e manutenção de computadores.
- Automação de rotinas de backup de máquinas virtuais com Shell Script (Windows Task Scheduler), eliminando o backup manual e migrando o ambiente para Proxmox.
- Apoio à equipe na manutenção de CFTV e organização do cabeamento estruturado.

**Principais tecnologias:** Windows, Linux, Shell Script, cabeamento estruturado, CFTV.

## Projetos

- **Sistema de Monitoramento com Frigate NVR** (2024) — implantação em Docker, proxy reverso Traefik (migrado para Teleport), integração com Zabbix/Grafana, CI/CD com GitHub Actions e modelo YOLO11s. Centralizou o gerenciamento de mais de 50 câmeras.
- **Migração para Proxmox VE** (2023) — liderança da migração da virtualização legada (VirtualBox) para Proxmox VE, com estratégia de backup e acesso via Teleport.
- **IaC — Proxmox + Terraform + Ansible** — automação de containers LXC com Terraform e Ansible. [github.com/joao-pedro-rdo/lab-proxmox-terraform-ansible](https://github.com/joao-pedro-rdo/lab-proxmox-terraform-ansible)
- **Terraform + Kubernetes (DigitalOcean)** — provisionamento de cluster Kubernetes com Terraform e backend remoto (HashiCorp Platform). [github.com/joao-pedro-rdo/terraform-kubernetes-dg](https://github.com/joao-pedro-rdo/terraform-kubernetes-dg)
- **SentinelCI** (TCC) — GitHub Action em TypeScript para análise estática de Dockerfiles com pipeline multi-agente de IA. [github.com/joao-pedro-rdo/SentinelCI](https://github.com/joao-pedro-rdo/SentinelCI)
- **Sistema de Controle de Acesso** (2025–presente) — aplicação web com API REST (JWT), React e deploy com Docker/GitHub Actions; reduziu o tempo de registro em mais de 70%.

## Formação

- Bacharelado em Ciência da Computação — Universidade Federal do Pampa (UNIPAMPA) · 2020 – 2026
- Disciplinas de Mestrado (aluno especial) — Universidade Federal do Pampa (UNIPAMPA) · 2026 – atual
- Técnico em Informática — Instituto Federal Farroupilha (IFFar) · 2017 – 2019

## Cursos

- Ansible
- Git e GitHub
- GitHub e GitHub Actions
- Docker
- Inglês — Senac RS · 2013 – 2018

## Competências

**Sistemas e servidores:** Linux · Windows Server · Active Directory (AD) · LDAP · Kerberos · Proxmox VE · Dell PowerEdge · HPE · Lenovo

**Automação e IaC:** Ansible · Terraform · Infrastructure as Code (IaC) · Git · GitOps · Python · Shell Script / Bash

**Containers e cloud:** Docker · LXC · Kubernetes · GitHub Actions · CI/CD · DigitalOcean · Oracle Cloud · HashiCorp Terraform

**Monitoramento:** Zabbix · Grafana · Loki · Observabilidade

**Redes e segurança:** Redes de Computadores · VPN · PfSense · Firewall · DNS · DHCP · Traefik · Tailscale · Cloudflare Zero Trust · OAuth2 · JWT

**Backup e armazenamento:** Proxmox Backup Server · RAID · Backup & Restore

**Desenvolvimento:** TypeScript · JavaScript · NestJS · React · REST APIs · PostgreSQL · Redis

**Gestão e suporte:** Liderança Técnica · Gestão de Projetos · Suporte Técnico · Análise de Causa Raiz · Documentação Técnica

## Idiomas

- Português — Nativo
- Inglês — Intermediário