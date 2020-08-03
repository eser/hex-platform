resource "helm_release" "prometheus-operator" {
  name             = "prometheus-operator"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "prometheus-operator"
  namespace        = "monitoring"
  create_namespace = true
  atomic           = true
}
