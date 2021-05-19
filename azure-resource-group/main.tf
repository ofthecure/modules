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

data "azurerm_resource_group" "resource_group" {
  name = var.name
}
