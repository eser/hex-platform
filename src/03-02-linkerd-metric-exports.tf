resource "kubectl_manifest" "linkerd-metric-exports" {
  depends_on = [
    helm_release.prometheus-operator,
    helm_release.linkerd
  ]

  yaml_body = <<YAML
apiVersion: monitoring.coreos.com/v1
kind: ServiceMonitor
metadata:
  labels:
    k8s-app: linkerd-prometheus
    release: monitoring
  name: linkerd-federate
  namespace: linkerd
spec:
  endpoints:
  - interval: 30s
    scrapeTimeout: 30s
    params:
      match[]:
      - '{job="linkerd-proxy"}'
      - '{job="linkerd-controller"}'
    path: /federate
    port: admin-http
    honorLabels: true
    relabelings:
    - action: keep
      regex: '^prometheus$'
      sourceLabels:
      - '__meta_kubernetes_pod_container_name'
  jobLabel: app
  namespaceSelector:
    matchNames:
    - linkerd
  selector:
    matchLabels:
      linkerd.io/control-plane-component: prometheus
YAML
}
