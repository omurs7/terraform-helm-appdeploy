resource "helm_release" "this" {
  name       = "var.nam"
  repository = "var.repository"
  chart      = "var.chart"
}
