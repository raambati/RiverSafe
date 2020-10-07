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
  access_key = "AKIASEGA5G4XVKWC6EWW"
  secret_key = "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"
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
