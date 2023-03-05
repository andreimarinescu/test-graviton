/*
 * # Terraform Base Mod
 * ##### Author: Andrei Marinescu
 */

terraform {
  backend "s3" {
    bucket = "test-graviton"
    key    = "base-tfstate"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74"
    }
  }
}
