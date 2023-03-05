/*
 * # K8S Deployments Module
 * ##### Author: Andrei Marinescu
 */

module "backend_dev" {
  source = "./modules/k8s-container-service"

  eks_region           = data.terraform_remote_state.eks.outputs.region
  eks_cluster_id       = data.terraform_remote_state.eks.outputs.cluster_id
  app_name             = "graviton-api-dev"
  kubernetes_namespace = "dev-api"
  container_image      = var.dev_container_image
  container_port       = var.dev_container_port
  acm_cert_arn         = var.dev_acm_cert_arn
  vpc_public_subnets   = data.terraform_remote_state.eks.outputs.public_subnets

  env_var_1                   = "test-1"
  env_var_2                   = "test-2"
}

