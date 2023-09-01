
data "aws_region" "current" {}

data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = var.cluster_name
}
data "kubernetes_service" "ingress_nginx" {

  metadata {
    name      = "nginx-ingress-controller"
    namespace = "default"
  }
  depends_on = [
    helm_release.nginx-ingress-controller
  ]
}