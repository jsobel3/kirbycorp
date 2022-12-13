#main tf in root directory

resource "azurerm_resource_group" "rg_platform" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

locals {
}


resource "azurerm_virtual_network" "vnet_platform" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.rg_platform.name
  location            = azurerm_resource_group.rg_platform.location
  address_space       = var.address_space
  tags                = var.tags

}

resource "azurerm_subnet" "subnets_platform" {
  for_each                                       = var.subnets
  name                                           = each.value.name
  resource_group_name                            = azurerm_resource_group.rg_platform.name
  virtual_network_name                           = azurerm_virtual_network.vnet_platform.name
  address_prefixes                               = each.value.address_space
}

