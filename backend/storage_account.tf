resource "azurerm_storage_account" "backend" {
    name                     = var.backend_resource_group.storage_account_name
    resource_group_name      = azurerm_resource_group.backend.name
    location                 = azurerm_resource_group.backend.location
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    is_hns_enabled           = true
    allow_blob_public_access = false
    min_tls_version          = "TLS1_2"

    tags = var.tags
}

resource "azurerm_storage_container" "terraformstate" {
    name                  = "terraformstate"
    storage_account_name  = azurerm_storage_account.backend.name
    container_access_type = "private"
}