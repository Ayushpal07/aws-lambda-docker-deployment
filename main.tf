terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6N4R76DSZJI7WXYI"
  secret_key = "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"
}

# create aws ECR
resource "aws_ecr_repository" "ecr_repo" {
  name                 = "aws-lambda-docker-deployment"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
  image_scanning_configuration {
    scan_on_push = true
  }
}


