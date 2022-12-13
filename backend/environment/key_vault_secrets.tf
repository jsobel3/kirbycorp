resource "azurerm_key_vault_secret" "spn_clientId" {
  key_vault_id = var.backend_key_vault.id
  name         = format("%s-%s", azuread_application.terraform.display_name, "clientId")
  value        = azuread_application.terraform.application_id

  tags = var.tags
}

resource "azurerm_key_vault_secret" "spn_objectId" {
  key_vault_id = var.backend_key_vault.id
  name         = format("%s-%s", azuread_application.terraform.display_name, "objectId")
  value        = azuread_service_principal.terraform.object_id

  tags = var.tags
}

resource "azurerm_key_vault_secret" "spn_secret" {
  key_vault_id = var.backend_key_vault.id
  name         = format("%s-%s", azuread_application.terraform.display_name, "clientSecret")
  value        = azuread_service_principal_password.terraform.value

  tags = var.tags
}
