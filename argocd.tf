data "http" "argo_manifests" {
  url = "https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml"
}

resource "kubernetes_namespace" "argo" {
  metadata {
    name = "argo"
  }
}

resource "kubernetes_manifest" "argo_manifests" {
  manifest = {
    apiVersion = "v1"
    kind       = "List"
    items      = yamldecode(data.http.argo_manifests.body)["items"]
  }
  depends_on = [kubernetes_namespace.argo]
}
