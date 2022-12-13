variable "resource_group" {
  description = "Name and Location of the Resource Group"
  type = object({
    name     = string
    location = string
  })
}

variable "backend_key_vault" {
  type = object({
    id = string
  })
}

variable "backend_storage_account" {
  type = object({
    id = string
  })
}

variable "tags" {
  description = "Tags to set for all resources"
  type        = map(string)
}

variable "spn_name" {
  description = "Name of the Service Principal"
  type        = string
}
