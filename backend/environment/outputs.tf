output "resource_group_name" {
  description = "Name of the Resource Group"
  value       = azurerm_resource_group.main.name
}

output "spn_clientid" {
  description = "Client ID (sometimes called Application ID) of the Service Principal"
  value       = azuread_application.terraform.application_id
}

output "spn_secret" {
  description = "Client Secret of the Service Principal"
  value       = azuread_service_principal_password.terraform.value
  sensitive   = true
}

output "spn_objectid" {
  description = "Object ID of the Service Principal"
  value       = azuread_service_principal.terraform.object_id
}
