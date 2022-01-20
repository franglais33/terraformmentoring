resource "azurerm_resource_group" "rg" {
  #count = var.create_rg ? 1 : 0
  name = var.name
  location = var.location
}