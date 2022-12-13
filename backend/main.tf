terraform {
  required_version = ">= 0.14.5"

  required_providers {
    azurerm = {
      version = ">=2.45.1"
      source  = "hashicorp/azurerm"
    }
  }
}
