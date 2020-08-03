resource "null_resource" "component-bindings" {
  depends_on = [
    helm_release.linkerd,
    helm_release.ambassador,
    kubectl_manifest.knative-serving-core
  ]

  provisioner "local-exec" {
    command = <<CMD
sleep 5; \
kubectl --context ${var.k8s_context} wait po -n ambassador --all --for=condition=Ready && \
kubectl --context ${var.k8s_context} wait po -n knative-serving --all --for=condition=Ready && \
kubectl --context ${var.k8s_context} patch clusterrolebinding ambassador --patch '{"subjects":[{"kind": "ServiceAccount", "name": "ambassador", "namespace": "ambassador"}]}' && \
kubectl --context ${var.k8s_context} set env --namespace ambassador deployments/ambassador AMBASSADOR_KNATIVE_SUPPORT=true && \
kubectl --context ${var.k8s_context} patch configmap/config-network --namespace knative-serving --type merge --patch '{"data":{"ingress.class":"ambassador.ingress.networking.knative.dev"}}' && \
kubectl --context ${var.k8s_context} annotate ns ambassador knative-serving default linkerd.io/inject=enabled && \
kubectl --context ${var.k8s_context} rollout restart deploy -n ambassador && \
kubectl --context ${var.k8s_context} rollout restart deploy -n knative-serving
  CMD
  }
}
