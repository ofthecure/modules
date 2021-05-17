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

variable "vnet_subnet_id" {
  description = "ID of the subnet to use for the node pool"
  type = string
}

variable "resource_group" {
  description = "Name of the AKS cluster resource group"
  type        = string
}

variable "default_node_pool" {
  description = "Default node pool configuration"
  type = object({
    node_count = string
  })
}
