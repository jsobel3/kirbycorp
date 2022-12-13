#main tf in root directory

resource "azurerm_resource_group" "kcDemoRG" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}


resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.kcDemoRG.name
  location            = azurerm_resource_group.kcDemoRG.location
  address_space       = var.address_space
  tags                = var.tags

}

resource "azurerm_subnet" "subnets" {
  for_each                                       = var.subnets
  name                                           = each.value.name
  resource_group_name                            = azurerm_resource_group.kcDemoRG.name
  virtual_network_name                           = azurerm_virtual_network.vnet_platform.name
  address_prefixes                               = each.value.address_space
}

resource "azurerm_container_registry" "acr" {
  name                = "kcDemoACR"
  resource_group_name = azurerm_resource_group.kcDemoRG.name
  location            = azurerm_resource_group.kcdemo.location
  sku                 = "Standard"
  admin_enabled       = false
}