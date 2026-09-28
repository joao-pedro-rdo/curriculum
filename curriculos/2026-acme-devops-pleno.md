# João Pedro Ramos de Oliveira

Alegrete – RS | (55) 99688-4436 | joaopedrordeo@hotmail.com | [LinkedIn](https://www.linkedin.com/in/joaopedrordeo/) | [GitHub](https://github.com/joao-pedro-rdo)

## Resumo Profissional

Profissional de **Infraestrutura e DevOps** com mais de 5 anos de experiência em TI, atualmente atuando como Analista de Infraestrutura no Exército Brasileiro, com foco em **automação, observabilidade e disponibilidade** de ambientes on-premises. Formado em Ciência da Computação (UNIPAMPA), com amplo conhecimento nas stacks **Linux, Proxmox, Ansible, Terraform, Docker, Zabbix, Grafana, Git e GitHub Actions**, incluindo todo o ciclo operacional de VMs e containers, monitoramento, backup/restore e resposta a incidentes. Destaque para a migração da virtualização legada (VirtualBox) para **Proxmox VE** e a implementação de monitoramento que reduziu em mais de 50% o tempo de detecção e resolução de falhas, além de experiência complementar em desenvolvimento full stack (TypeScript/NestJS, React) e CI/CD.

## Experiência Profissional

### 3º Sargento — Analista de Infraestrutura | Exército Brasileiro

set/2023 – atual · Alegrete – RS

**Stacks:** **Linux**, **Proxmox**, **LXC**, **Docker**, **Ansible**, **Terraform**, Python, Shell Script, **Zabbix**, **Grafana**, Loki, Proxmox Backup Server, RAID, AD, LDAP, Kerberos, Teleport

- Administração da infraestrutura on-premises (**servidores bare-metal, Linux, virtualização Proxmox** com VMs, LXC e Docker), incluindo o ciclo operacional completo de VMs e containers com **provisionamento automatizado via Terraform e Ansible** e rastreabilidade/versionamento das mudanças.
- Implementação e operação de **monitoramento com Zabbix, Grafana e Loki** (dashboards, alertas em tempo real, centralização de logs e investigação de incidentes), reduzindo em **mais de 50%** o tempo médio de detecção e resolução de falhas em sistemas críticos.
- Desenvolvimento de **automações com Ansible** (instalação de pacotes, configuração de SOs, gerenciamento de usuários, deployment, patches, configuração de rede e implantação de agentes Zabbix/Teleport).
- Administração de rotinas de **backup com Proxmox Backup Server** e RAID para recuperação de workloads e continuidade operacional.
- Condução do **IAM da OM com AD/LDAP (UCS), Kerberos e OAuth2**, integrando Nextcloud, GLPI e demais sistemas, com acesso centralizado e rastreável.
- Liderança técnica da equipe de TI, prestação de suporte nível 3, orientação do suporte nível 2 e treinamento da equipe; gestão de projetos de infraestrutura e aquisições.

### Desenvolvedor Full Stack (bolsista) | UNIPAMPA — Secretaria de Saúde de Jaguari

out/2025 – jul/2026 · Alegrete – RS

**Stacks:** TypeScript, NestJS, React, Redis, PostgreSQL, GitHub Actions, self-hosted runners, Docker, Tailscale

- Desenvolvimento de aplicações web com **TypeScript/NestJS** em arquitetura modular (APIs REST, OAuth2/JWT, filas com Redis para notificações via WhatsApp/email), com testes unitários (Vitest).
- Infraestrutura de entrega com **GitHub Actions e self-hosted runners**, deploy em servidor físico e ambiente de homologação em VPS Oracle, com acesso via Cloudflare Zero Trust e Tailscale.

### Cabo — Suporte em TI | Exército Brasileiro

abr/2022 – ago/2023 · Alegrete – RS

**Stacks:** Windows, Linux, cabeamento estruturado, CFTV

- Suporte e troubleshooting nível 1 e 2 em ambientes Windows/Linux, administração de sistemas internos e atendimento de incidentes de infraestrutura.
- Instalação de CFTV, cabeamento estruturado, racks de servidores e manutenção do parque de computadores.

### Soldado — Auxiliar de Suporte de TI | Exército Brasileiro

mar/2021 – abr/2022 · Alegrete – RS

**Stacks:** Windows, Linux, Shell Script, CFTV

- Instalação e configuração de sistemas Windows/Linux e suporte nível 1 aos usuários.
- Automação de rotinas de backup de VMs com Shell Script e agendamento no Windows Task Scheduler, eliminando o backup manual.

## Adicionais

- **Containers e orquestração**: Docker (imagens, compose) e LXC no Proxmox; noções de Kubernetes via laboratório com **Terraform** na DigitalOcean.
- **Cloud e IaC**: provisionamento de cluster Kubernetes na DigitalOcean com backend remoto (HashiCorp Platform); **CI/CD com GitHub Actions e self-hosted runners**; acesso remoto com Cloudflare Zero Trust e Tailscale.
- **Redes e segurança**: redes de infraestrutura, proxy reverso Traefik (SSL/autenticação), IPAM (Bagre), agentes Zabbix/Teleport, controle de VPN e proxy, autenticação JWT e criptografia em aplicações.
- **Programação e scripting**: Python, Shell Script, TypeScript, JavaScript.
- **Liderança e gestão**: liderança técnica de equipe, suporte nível 3, orientação e treinamento, gestão do ciclo de vida de projetos de TI e aquisições.

## Projetos

- **Sistema de Monitoramento com Frigate NVR** (2024, Exército Brasileiro) — implantação em **Docker** sobre Linux com proxy reverso **Traefik** (migrado para **Teleport Zero Trust**), integração com Zabbix/Grafana e **CI/CD via GitHub Actions**; treinamento de modelo YOLO11s para classificação de veículos. Centralizou o gerenciamento de **mais de 50 câmeras** e reduziu custos com hardware dedicado.
- **Migração para Proxmox VE** (2023, Exército Brasileiro) — liderança da migração da virtualização legada (VirtualBox) para **Proxmox VE**, com acesso via Teleport e estratégia de backup, garantindo integridade dos dados, menor tempo de inatividade e conformidade com software livre.
- **IaC — Proxmox + Terraform + Ansible** — automação da criação e configuração de containers LXC com **Terraform e Ansible**. [github.com/joao-pedro-rdo/lab-proxmox-terraform-ansible](https://github.com/joao-pedro-rdo/lab-proxmox-terraform-ansible)
- **Terraform + Kubernetes (DigitalOcean)** — laboratório de provisionamento/destruição de cluster Kubernetes com **Terraform** e backend remoto na HashiCorp Platform. [github.com/joao-pedro-rdo/terraform-kubernetes-dg](https://github.com/joao-pedro-rdo/terraform-kubernetes-dg)
- **SentinelCI** (TCC) — GitHub Action em TypeScript para análise estática de Dockerfiles com heurísticas e pipeline multi-agente de IA. [github.com/joao-pedro-rdo/SentinelCI](https://github.com/joao-pedro-rdo/SentinelCI)
- **Sistema de Controle de Acesso** (2025–presente, Exército Brasileiro) — aplicação web para gestão de acesso de visitantes/terceirizados com API REST (JWT em cookies HttpOnly), React e deploy automatizado com Docker/GitHub Actions; leitura de QR code via leitor físico e câmera. Reduziu o tempo de registro em **mais de 70%**.

## Formação

| Formação                                 | Instituição                              | Período      |
| ---------------------------------------- | ---------------------------------------- | ------------ |
| Bacharelado em Ciência da Computação     | Universidade Federal do Pampa (UNIPAMPA) | 2020 – 2026  |
| Disciplinas de Mestrado (aluno especial) | Universidade Federal do Pampa (UNIPAMPA) | 2026 – atual |
| Técnico em Informática                   | Instituto Federal Farroupilha (IFFar)    | 2017 – 2019  |

## Cursos

- Ansible · Git e GitHub · GitHub e GitHub Actions · Docker · Introdução a DevOps

## Idiomas

| Idioma    | Nível                                       |
| --------- | ------------------------------------------- |
| Português | Nativo                                      |
| Inglês    | Intermediário (foco em comunicação técnica) |
