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

locals {
  resource_name = "aks-${var.environment}-${var.location}-${var.name_postfix}"
}

// Create Role for AKS cluster to pull images from registry
resource "azurerm_role_assignment" "aks_acr" {
  scope                = var.container_registry_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity.0.object_id
}

// Create AKS cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = local.resource_name
  kubernetes_version  = "1.19.6"
  location            = var.location
  resource_group_name = var.resource_group
  dns_prefix          = local.resource_name

  default_node_pool {
    name                = "system"
    node_count          = var.default_node_pool.node_count
    vm_size             = "Standard_DS2_v2"
    type                = "VirtualMachineScaleSets"
    availability_zones  = [1, 2, 3]
    enable_auto_scaling = false
    vnet_subnet_id      = var.vnet_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "azure"
    network_policy    = "azure"
  }

  addon_profile {
    oms_agent {
      enabled = true
    }
  }
}
