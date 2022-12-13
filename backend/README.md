<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.45.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.85.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_environment"></a> [environment](#module\_environment) | ./environment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_resource_group.backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.terraformstate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_resource_group"></a> [backend\_resource\_group](#input\_backend\_resource\_group) | Details for the backend Resource Group | <pre>object({<br>        name = string<br>        location = string<br>        storage_account_name = string<br>        key_vault_name = string<br>    })</pre> | n/a | yes |
| <a name="input_environments"></a> [environments](#input\_environments) | Environment name, Resource Group location | `map(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to set for all resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_container_name"></a> [backend\_container\_name](#output\_backend\_container\_name) | Name of the Terraform Container in the backend Storage Account |
| <a name="output_backend_resource_group_name"></a> [backend\_resource\_group\_name](#output\_backend\_resource\_group\_name) | Name of the backend Resource Group |
| <a name="output_backend_storage_account_name"></a> [backend\_storage\_account\_name](#output\_backend\_storage\_account\_name) | Name of the backend Storage Account |
| <a name="output_environment_resource_group_names"></a> [environment\_resource\_group\_names](#output\_environment\_resource\_group\_names) | Names of the Environment Resource Groups |
| <a name="output_environment_spn_clientids"></a> [environment\_spn\_clientids](#output\_environment\_spn\_clientids) | Client IDs of the environment-specific Service Principals (SPNs) |
| <a name="output_environment_spn_objectids"></a> [environment\_spn\_objectids](#output\_environment\_spn\_objectids) | Object IDs of the environment-specific Service Principals (SPNs) |
| <a name="output_environment_spn_secrets"></a> [environment\_spn\_secrets](#output\_environment\_spn\_secrets) | Client Secrets of the environment-specific Service Principals (SPNs) |
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | ID of the Subscription |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | ID of the Azure AD Tenant |
<!-- END_TF_DOCS -->