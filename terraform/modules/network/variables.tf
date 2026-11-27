variable "environment" {
  description = "Contract value 'environment'."
  type        = string
}

variable "region" {
  description = "Contract value 'region'."
  type        = string
}

variable "resource_group" {
  description = "Contract value 'resource_group'."
  type        = string
}

variable "virtual_network_name" {
  description = "Contract value 'virtual_network_name'."
  type        = string
}

variable "vnet_address_space" {
  description = "Contract value 'vnet_address_space'."
  type        = list(string)
}
