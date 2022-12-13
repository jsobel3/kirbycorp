resource "azuread_application" "terraform" {
  display_name = var.spn_name
}

resource "azuread_service_principal" "terraform" {
  application_id = azuread_application.terraform.application_id
}

resource "azuread_service_principal_password" "terraform" {
  service_principal_id = azuread_service_principal.terraform.object_id
}
