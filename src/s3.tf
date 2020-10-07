terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = " "
  secret_key = " "
}

// S3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "riversafe-test"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}
