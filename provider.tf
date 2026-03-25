terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }
}

provider "aws" {
  # Configuration options
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
  region = "ap-south-1a"
}