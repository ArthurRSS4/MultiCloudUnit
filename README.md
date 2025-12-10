# Projeto TechFusion - Infraestrutura Multicloud com Terraform

Projeto prático de DevOps que implementa uma infraestrutura multicloud usando Terraform para integrar recursos da **AWS** e **Microsoft Azure**.

## Objetivo
Criar uma infraestrutura resiliente e automatizada para um cenário corporativo de streaming de dados, garantindo alta disponibilidade e conformidade com estratégia multicloud.

## Arquitetura
- **AWS**: Responsável pela ingestão de dados (VPC, sub-redes privadas, grupos de segurança).
- **Azure**: Responsável pelo processamento e analytics (Rede Virtual, Resource Groups).
- **Integração**: Pipeline de CI/CD unificado com Azure DevOps para orquestração.

## Tecnologias Utilizadas
- **Terraform** (Infraestrutura como Código)
- **Azure DevOps** (CI/CD, Pipelines YAML, Service Connections)
- **AWS** (EC2, VPC, IAM)
- **Microsoft Azure** (Resource Manager, VNet)

## Estrutura do Projeto
A organização segue as melhores práticas de módulos Terraform: