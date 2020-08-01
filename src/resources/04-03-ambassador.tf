resource "helm_release" "ambassador" {
  name             = "ambassador"
  chart            = "../../helm-charts/hex-common-ambassador"
  namespace        = "ambassador"
  atomic           = true
}
