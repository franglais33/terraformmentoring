output "azurerm_virtual_network_name" {
    value = azurerm_virtual_network.vnet.name
}

output "azurerm_virtual_network_id" {
    value = azurerm_virtual_network.vnet.id
    description = "ID of the virtual network"
}

output "azurerm_subnet_id" {
    value = azurerm_subnet.subnet1.id
    description = "ID of the subnet1"
}