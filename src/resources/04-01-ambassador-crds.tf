resource "kubectl_manifest" "ambassador-crds" {
  yaml_body = file("${path.module}/../../tmp/ambassador-operator-crds.yaml")
}
