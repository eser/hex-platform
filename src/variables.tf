variable "k8s_context" {
  type = string
  default = "docker-desktop"
}

variable "k8s_environment" {
  type = string
  default = "playground"
}

variable "certificate_resource_name" {
  type = string
  default = "identity.linkerd.cluster.local"
}
