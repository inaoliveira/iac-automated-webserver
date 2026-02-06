variable "resource_group_name" {
  description = "Nome do Grupo de Recursos"
  type        = string
  default     = "rg-iac-webserver-prod"
}

variable "location" {
  description = "Região da Azure"
  type        = string
  default     = "westus2"  # Alterado para West US 2 conforme solicitado
}

variable "container_name" {
  description = "Nome da Instância de Container"
  type        = string
  default     = "aci-web-inacio-01"
}
