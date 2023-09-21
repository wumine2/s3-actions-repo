module "s3" {
  source = "git@github.com:wumine2/s3-repo.git//s3-module?ref=v1.2.0"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "bootcamp32-dev-1"
    region  = "us-west-2"
    key     = "action/terraform.tfstate"
    encrypt = true
  }
}

