module "aws_network" {
  source = "../../../modules/aws/network"

  environment     = var.environment
  vpc_cidr        = var.aws_vpc_cidr
  private_subnets = var.aws_private_subnets
}

module "azure_network" {
  source = "../../../modules/azure/network"

  environment          = var.environment
  location             = var.azure_location
  resource_group_name  = var.azure_resource_group_name
  vnet_address_space   = var.azure_vnet_address_space
}