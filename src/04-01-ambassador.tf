resource "helm_release" "ambassador" {
  name             = "ambassador"
  repository       = "https://getambassador.io"
  chart            = "ambassador"
  namespace        = "ambassador"
  create_namespace = true
  atomic           = true

  set {
    name  = "namespace.name"
    value = "ambassador"
  }

  set {
    name  = "enableAES"
    value = "true"
  }

  set {
    name  = "crds.keep"
    value = "false"
  }

  set {
    name  = "autoscaling.enabled"
    value = "true"
  }

  set {
    name  = "autoscaling.minReplicas"
    value = "2"
  }

  set {
    name  = "autoscaling.maxReplicas"
    value = "6"
  }

  # set {
  #   name  = "autoscaling.metrics"
  #   value = ""
  # }

  set {
    name  = "metrics.serviceMonitor.enabled"
    value = "true"
  }

  set {
    name  = "redis.create"
    value = "true"
  }

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
