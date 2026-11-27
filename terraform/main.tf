provider "azurerm" {
  features {}
}

module "network" {
  source               = "./modules/network"
  environment          = "dev"
  region               = "westeurope"
  resource_group       = "rg-azure-vnet-dev"
  virtual_network_name = "vnet-azure-vnet-dev"
  vnet_address_space   = ["10.0.0.0/16"]
}
