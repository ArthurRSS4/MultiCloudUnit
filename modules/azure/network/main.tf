resource "azurerm_resource_group" "network" {
  name     = "rg-network-${var.environment}"
  location = var.location
  
  tags = {
    Environment = var.environment
    Project     = "TechFusion"
  }
}

resource "azurerm_virtual_network" "main" {
  name                = "vnet-${var.environment}"
  address_space       = [var.vnet_address_space]
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
  
  tags = {
    Environment = var.environment
  }
}

resource "azurerm_subnet" "processing" {
  name                 = "snet-processing-${var.environment}"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [cidrsubnet(var.vnet_address_space, 8, 10)]
}