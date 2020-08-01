resource "helm_release" "ambassador-operator" {
  name             = "ambassador-operator"
  repository       = "https://getambassador.io"
  chart            = "ambassador-operator"
  namespace        = "ambassador"
  create_namespace = true
  atomic           = true
}
