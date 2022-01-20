provider "azurerm" {
  features {}
}

module "resourcegroup" {
  source   = "./modules/resourcegroup"
  name     = var.name
  location = var.location
}

module "networking" {
  source          = "./modules/networking"
  location        = var.location
  name            = module.resourcegroup.resource_group_name
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
