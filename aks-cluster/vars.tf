variable "environment" {
  description = "Name of the environment the AKS cluster belongs to"
  type        = string
}

variable "location" {
  description = "Azure region of the AKS cluster"
  type        = string
}

variable "name_postfix" {
  description = "Naming postfix for the AKS cluster name"
  type        = string
}

variable "container_registry_id" {
  description = "Resource ID of the ACR"
  type        = string
}

variable "resource_group" {
  description = "Name of the AKS cluster resource group"
  type        = string
}
