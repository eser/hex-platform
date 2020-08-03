resource "kubectl_manifest" "knative-serving-crds" {
  yaml_body = file("${path.module}/../tmp/knative-serving-crds.yaml")
}
