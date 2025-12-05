variable "environment" {
  description = "Nome do ambiente (ex: dev, prod)"
  type        = string
}

variable "location" {
  description = "Região do Azure"
  type        = string
}

variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
}

variable "vnet_address_space" {
  description = "Espaço de endereço da VNet"
  type        = string
}