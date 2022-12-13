#dev environment variables

resource "azurerm_resource_group" "kcDemoRG" {
  name     = "kcDemoRG"
  location = "SouthCentralUS"
}

vnet_name          = "vnet-dev-scus-001"
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

