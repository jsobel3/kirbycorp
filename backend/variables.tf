variable "backend_resource_group" {
    description = "Details for the backend Resource Group"
    type = object({
        name = string
        location = string
        storage_account_name = string
        key_vault_name = string
    })
}

variable "environments" {
    description = "Environment name, Resource Group location"
    type = map(string)
}

variable "tags" {
    description = "Tags to set for all resources"
    type = map(string)
}