terraform {
  required_version = "= 0.15.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.59.0"
    }
  }
}

// Create Azure Container Registry
resource "azurerm_container_registry" "acr" {
  name                = "acr${var.environment}${var.location}${var.name_postfix}"
  resource_group_name = var.resource_group
  location            = var.location
  sku                 = "Standard"
}
