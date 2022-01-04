provider "azurerm" {
  features {}
}

module "resourcegroup" {
  source   = "./modules/resourcegroup"
  name     = var.name
  location = var.location

  #tags = {
  # Environment = "Terraform Getting Started"
  #Team        = "DevOps"
  #}
}

#resource "azurerm_virtual_network" "vnet" {
# name                = "myTFVnet"
# address_space       = ["10.1.0.0/16"]
# location            = var.location
# resource_group_name = var.name
#}

module "networking" {
  source          = "./modules/networking"
  location        = var.location
  name            = var.name
  subnetfirstcidr = var.subnetfirstcidr
}

resource "azurerm_storage_account" "sa" {
  name                     = "tftestmentoring1"
  resource_group_name      = "myResourceGroup"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true

  tags = {
    environment = "Terraform Storage"
    CreatedBy   = "TF Admin"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "testmentoring"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "blob"
}
