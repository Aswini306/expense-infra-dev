terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "expense.bucket"
    key    = "expense.rds"
    region = "us-east-1"
    dynamodb_table = "expense.db"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}