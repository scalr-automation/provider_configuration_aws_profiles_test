terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.0.0"
    }
  }
}
variable "bucket_name" {
  type=string
}
provider "aws" {
  region = "us-east-1"
}
resource aws_s3_bucket_object "obj1" {
  bucket = var.bucket_name
  key    = "obj3"
  content = "obj3 content"
}
