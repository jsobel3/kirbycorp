<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.5 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >=1.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.45.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.9.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.85.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.terraform](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_service_principal.terraform](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_service_principal_password.terraform](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password) | resource |
| [azurerm_key_vault_secret.spn_clientId](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.spn_objectId](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_key_vault_secret.spn_secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.backend_blob_data_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.owner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_key_vault"></a> [backend\_key\_vault](#input\_backend\_key\_vault) | n/a | <pre>object({<br>    id = string<br>  })</pre> | n/a | yes |
| <a name="input_backend_storage_account"></a> [backend\_storage\_account](#input\_backend\_storage\_account) | n/a | <pre>object({<br>    id = string<br>  })</pre> | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Name and Location of the Resource Group | <pre>object({<br>    name     = string<br>    location = string<br>  })</pre> | n/a | yes |
| <a name="input_spn_name"></a> [spn\_name](#input\_spn\_name) | Name of the Service Principal | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to set for all resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Name of the Resource Group |
| <a name="output_spn_clientid"></a> [spn\_clientid](#output\_spn\_clientid) | Client ID (sometimes called Application ID) of the Service Principal |
| <a name="output_spn_objectid"></a> [spn\_objectid](#output\_spn\_objectid) | Object ID of the Service Principal |
| <a name="output_spn_secret"></a> [spn\_secret](#output\_spn\_secret) | Client Secret of the Service Principal |
<!-- END_TF_DOCS -->