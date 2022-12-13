#dev environment variables

resource "azurerm_resource_group" "kcdemo" {
  name     = "kcdemo"
  location = "SouthCentralUS"
}

vnet_name          = "vnet-platfrms-spoke-dev-scus-001"
address_space      = ["10.0.0.0/20"]
env                = "dev"

subnets = {
  web_subnet = {
    name              = "snet-acr-dev-01"
    address_space     = ["10.0.0.0/24"]
    service_endpoints = []
    delegations       = {}
  }

    app_subnet = {
    name              = "snet-app-dev-01"
    address_space     = ["10.0.1.0/24"]
    service_endpoints = []
    delegations       = {}
  }

  data_subnet = {
    name              = "snet-data-dev-01"
    address_space     = ["10.0.2.0/24"]
    service_endpoints = []
    delegations       = {}
  }
}

resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.kcdemo.name
  location            = azurerm_resource_group.kcdemo.location
  sku                 = "Standard"
  admin_enabled       = false
}