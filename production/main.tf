provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "pkpavan.bucket.00001"
    key = "prod-module.tfstate"
    region = "ap-south-1"
  }
}