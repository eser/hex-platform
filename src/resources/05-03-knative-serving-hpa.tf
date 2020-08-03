resource "kubectl_manifest" "knative-serving-hpa" {
  depends_on = [
    kubectl_manifest.knative-serving-core
  ]

  yaml_body = file("${path.module}/../../tmp/knative-serving-hpa.yaml")
}
