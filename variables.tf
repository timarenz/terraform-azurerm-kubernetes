variable "environment_name" {
  type = string
}

variable "owner_name" {
  type    = string
  default = null
}

variable "ttl" {
  type    = number
  default = 48
}

variable "region" {
  type    = string
  default = "West Europe"
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "kubernetes_version" {
  type    = string
  default = null
}

variable "vm_size" {
  type    = string
  default = "Standard_D2s_v3"
}

variable "disk_size_gb" {
  type    = number
  default = 30
}

variable "node_count" {
  type    = number
  default = 3
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tags" {
  type    = map
  default = null
}
