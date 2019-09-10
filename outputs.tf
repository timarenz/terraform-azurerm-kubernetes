output "client_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.main.kube_config.0.client_certificate)
}

output "client_key" {
  value = base64decode(azurerm_kubernetes_cluster.main.kube_config.0.client_key)
}

output "cluster_ca_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.main.kube_config.0.cluster_ca_certificate)
}

output "kubeconfig" {
  value = azurerm_kubernetes_cluster.main.kube_config_raw
}

output "endpoint" {
  value = azurerm_kubernetes_cluster.main.fqdn
}
