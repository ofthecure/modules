terraform {
  required_version = "= 0.15.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.59.0"
    }
  }
}

provider "azurerm" {
  features {}
}

// Create Azure virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = var.address_space

  subnet {
    name           = "snet-${var.subnet_name}"
    address_prefix = var.subnet_address_space
  }
}
