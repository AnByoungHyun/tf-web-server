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
}

# Create a VPC
module "vpc" {
  source = "github.com/AnByoungHyun/tf-aws-vpc"
}

# Create a VPC
module "keypair" {
  source = "github.com/AnByoungHyun/tf-aws-keypair"
}