resource "azurerm_role_assignment" "owner" {
  scope                = azurerm_resource_group.main.id
  role_definition_name = "Owner"
  principal_id         = azuread_service_principal.terraform.object_id
}

resource "azurerm_role_assignment" "backend_blob_data_contributor" {
  scope                = var.backend_storage_account.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_service_principal.terraform.object_id
}
