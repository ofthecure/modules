output "id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = element(azurerm_virtual_network.vnet.subnet.*.id, 0)
}
