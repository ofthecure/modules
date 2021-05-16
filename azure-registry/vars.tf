variable "environment" {
  description = "Name of the environment the ACR belongs to"
  type        = string
}

variable "location" {
  description = "Azure region of the ACR"
  type        = string
}

variable "name_postfix" {
  description = "Naming postfix for the ACR name"
  type        = string
}

variable "resource_group" {
  description = "Name of the ACR resource group"
  type        = string
}
