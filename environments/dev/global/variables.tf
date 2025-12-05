variable "environment" {
  description = "Nome do ambiente (ex: dev, prod)"
  type        = string
  default     = "dev"
}

variable "aws_vpc_cidr" {
  description = "Bloco CIDR para a VPC da AWS"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aws_private_subnets" {
  description = "Lista de CIDRs para as subnets privadas na AWS"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azure_location" {
  description = "Região onde os recursos do Azure serão criados"
  type        = string
  default     = "East US"
}

variable "azure_resource_group_name" {
  description = "Nome do Resource Group no Azure"
  type        = string
  default     = "rg-techfusion-dev"
}

variable "azure_vnet_address_space" {
  description = "Espaço de endereço da Rede Virtual do Azure"
  type        = string
  default     = "10.1.0.0/16"
}