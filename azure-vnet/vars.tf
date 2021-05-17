variable "environment" {
  description = "Name of the environment the vnet belongs to"
  type        = string
}

variable "location" {
  description = "Azure region of the vnet"
  type        = string
}

variable "name_postfix" {
  description = "Naming postfix for the vnet"
  type        = string
}

variable "resource_group" {
  description = "Name of the vnet resource group"
  type        = string
}

variable "address_space" {
  description = "Address space (CIDR notation) of the vnet"
  type        = list(string)
}

variable "subnet_address_space" {
  description = "Address space (CIDR notation) of the vnet subnet"
  type        = string
}
