output "tenant_id" {
  description = "ID of the Azure AD Tenant"
  value = data.azurerm_client_config.current.tenant_id
}

output "subscription_id" {
  description = "ID of the Subscription"
  value = data.azurerm_client_config.current.subscription_id
}

output "backend_resource_group_name" {
  description = "Name of the backend Resource Group"
  value = azurerm_resource_group.backend.name
}

output "backend_storage_account_name" {
  description = "Name of the backend Storage Account"
  value = azurerm_storage_account.backend.name
}

output "backend_container_name" {
  description = "Name of the Terraform Container in the backend Storage Account"
  value = azurerm_storage_container.terraformstate.name
}

output "environment_resource_group_names" {
  description = "Names of the Environment Resource Groups"
  value = tomap({
    for k, v in module.environment: k => v.resource_group_name
  })
}

output "environment_spn_clientids" {
  description = "Client IDs of the environment-specific Service Principals (SPNs)"
  value = tomap({
    for k, v in module.environment : k => v.spn_clientid
  })
}

output "environment_spn_secrets" {
  description = "Client Secrets of the environment-specific Service Principals (SPNs)"
  value = tomap({
    for k, v in module.environment : k => v.spn_secret
  })
  sensitive = true
}

output "environment_spn_objectids" {
  description = "Object IDs of the environment-specific Service Principals (SPNs)"
  value = tomap({
    for k, v in module.environment : k => v.spn_objectid
  })
}