provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::365176486745:role/fsainovich-eks-assume-role"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "fsainovich-eks-backend"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-1"
    encrypt        	   = true
    dynamodb_table = "fsainovich-eks-backend"
  }
}