resource "azurerm_resource_group" "backend" {  
    name = var.backend_resource_group.name  
    location = var.backend_resource_group.location  
    tags = var.tags
}