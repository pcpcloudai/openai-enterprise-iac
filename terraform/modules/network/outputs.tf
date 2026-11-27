output "resource_group_name" {
  description = "Name of the shared resource group for downstream Azure resources."
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "Azure resource ID of the shared resource group."
  value       = azurerm_resource_group.this.id
}

output "virtual_network_id" {
  description = "Azure resource ID of the virtual network; not a subnet ID."
  value       = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
  description = "Name of the virtual network for downstream subnet creation."
  value       = azurerm_virtual_network.this.name
}

output "location" {
  description = "Azure location of the shared resource group and virtual network."
  value       = azurerm_resource_group.this.location
}
