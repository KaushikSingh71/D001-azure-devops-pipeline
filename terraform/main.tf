#############################################
# Resource Group
#############################################

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

#############################################
# Azure Container Registry
#############################################

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Basic"
  admin_enabled       = false
}

#############################################
# Log Analytics Workspace
#############################################

resource "azurerm_log_analytics_workspace" "law" {
  name                = "d001-log-analytics"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

#############################################
# Azure Kubernetes Service
#############################################

resource "azurerm_kubernetes_cluster" "aks" {

  name                = var.aks_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  dns_prefix = "d001aks"

  default_node_pool {

    name       = "system"
    node_count = var.node_count
    vm_size    = var.vm_size

  }

  identity {
    type = "SystemAssigned"
  }

  oms_agent {

    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id

  }

  tags = {

    Environment = "Development"
    Project     = "D001"
    Owner       = "Kaushik Singh"

  }

}
