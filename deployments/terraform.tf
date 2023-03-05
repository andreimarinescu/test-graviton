terraform {
  backend "s3" {
    bucket = "test-graviton"
    key    = "deployments-tfstate"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.17.0"
    }
  }
}

data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = var.remote_state_bucket_name
    key    = var.remote_state_key
    region = var.remote_state_region
  }
}
