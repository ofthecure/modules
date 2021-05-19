output "resource_group" {
    value = {
        name = data.azurerm_resource_group.resource_group.name
        location = data.azurerm_resource_group.resource_group.location
    }
}
