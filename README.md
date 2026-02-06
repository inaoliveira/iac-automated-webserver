
# ☁️ Azure Infrastructure as Code - Web Server

Este projeto e apenas um LAB para  fixaçao

## 🛠️ Tecnologias Utilizadas
* **Terraform**: Orquestração e gerenciamento de estado da infraestrutura.
* **Microsoft Azure**: Provedor de nuvem (Resource Groups, ACI).
* **Linux (WSL)**: Ambiente de desenvolvimento e scripting.
* **Git**: Controle de versão e boas práticas de commit.

## ⚙️ Arquitetura
O projeto sobe os seguintes recursos na região **West US 2**:
1.  **Azure Resource Group**: Grupo lógico para gerenciamento do ciclo de vida.
2.  **Azure Container Instance (ACI)**: Container Serverless exposto publicamente via DNS.

## 🔧 Desafios e Soluções (Troubleshooting)
Durante o desenvolvimento, tive alguns bloqueios de *Rate Limit* ao tentar baixar a imagem oficial do Nginx do Docker Hub (`409 Conflict`).
* **Solução**: Alteramos a estratégia para utilizar a imagem interna da Microsoft (\`mcr.microsoft.com/azuredocs/aci-helloworld\`), garantindo estabilidade no deploy e eliminando a dependência de registries externos instáveis.

## 🚀 Como Executar

### Pré-requisitos
* Azure CLI instalado e autenticado (\`az login\`).
* Terraform instalado.

### Passo a Passo

# 1. Clone o repositório
git clone https://github.com/SEU_USUARIO/iac-automated-webserver.git

# 2. Acesse a pasta de IaC
cd iac-automated-webserver/terraform

# 3. Inicialize e Aplique
terraform init
terraform apply -auto-approve


---
