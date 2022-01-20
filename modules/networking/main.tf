resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = ["10.1.0.0/16"]
  location            = var.location
  resource_group_name = var.name
}

resource "azurerm_subnet" "subnet1" {
    name = "subnet1"
    virtual_network_name = azurerm_virtual_network.vnet.name
    resource_group_name = var.name
    address_prefixes = [var.subnetfirstcidr]
}