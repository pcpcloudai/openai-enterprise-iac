resource "azurerm_resource_group" "this" {
  name     = var.resource_group
  location = var.region

  tags = {
    environment = var.environment
  }
}

resource "azurerm_virtual_network" "this" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = var.vnet_address_space

  tags = {
    environment = var.environment
  }
}
