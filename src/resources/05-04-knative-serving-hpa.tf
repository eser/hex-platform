resource "kubectl_manifest" "knative-serving-hpa" {
  depends_on = [
    kubectl_manifest.knative-serving-crds,
    kubectl_manifest.knative-serving-core,
    # 05-03-knative-ambassador-binding
  ]

  yaml_body = file("${path.module}/../../tmp/knative-serving-hpa.yaml")
}
