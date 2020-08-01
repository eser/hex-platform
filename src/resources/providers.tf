provider "kubernetes" {
  config_context = var.k8s_context
}

provider "helm" {
  kubernetes {
    config_context = var.k8s_context
  }
}

provider "kubectl" {
  config_context = var.k8s_context
}

provider "tls" {
}
