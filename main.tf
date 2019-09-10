locals {
  common_tags = {
    environment = var.environment_name
    owner       = var.owner_name
    ttl         = var.ttl
  }
  all_tags = merge(local.common_tags, var.tags == null ? {} : var.tags)

  kubernetes_version = var.kubernetes_version == null ? data.azurerm_kubernetes_service_versions.main.latest_version : var.kubernetes_version
}

data "azurerm_kubernetes_service_versions" "main" {
  location = var.region
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = var.name
  location            = var.region
  resource_group_name = var.resource_group_name
  dns_prefix          = var.name
  kubernetes_version  = local.kubernetes_version

  agent_pool_profile {
    name            = "default"
    count           = var.node_count
    vm_size         = var.vm_size
    os_type         = "Linux"
    os_disk_size_gb = var.disk_size_gb
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = local.all_tags
}

