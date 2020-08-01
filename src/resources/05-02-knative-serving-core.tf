resource "kubectl_manifest" "knative-serving-core" {
  depends_on = [
    kubectl_manifest.knative-serving-crds
  ]

  yaml_body = file("${path.module}/../../tmp/knative-serving-core.yaml")
}
