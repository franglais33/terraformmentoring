terraform {
  backend "azurerm" {
    resource_group_name  = "myResourceGroup"
    storage_account_name = "tftestmentoring1"
    container_name       = "testmentoring"
    key                  = "terraform.state"
  }
}