terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# 1. Cria o Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# 2. Cria o Container (Servidor Web)
resource "azurerm_container_group" "web" {
  name                = var.container_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  dns_name_label      = "inacio-web-app" # Isso cria a URL pública
  os_type             = "Linux"

  container {
    name   = "nginx-server"
    # Usando imagem Microsoft para evitar erros de Docker Hub
    image  = "mcr.microsoft.com/azuredocs/aci-helloworld"
    cpu    = "0.5"
    memory = "1.0"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}

# 3. Mostra o Link Final no terminal
output "url_do_site" {
  value = "http://${azurerm_container_group.web.fqdn}"
}
