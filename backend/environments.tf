module "environment" {
  for_each = var.environments

  source = "./environment"

  resource_group = {
    name     = "${each.key}"
    location = "${each.value}"
  }

  tags                    = var.tags
  backend_key_vault       = azurerm_key_vault.key_vault
  backend_storage_account = azurerm_storage_account.backend
  spn_name                = "Terraform-${each.key}"
}
