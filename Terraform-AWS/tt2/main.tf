provider "aws" {
    region = "ap-south-1"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.23.0"
    }
  # Before using s3 we have to add credentials to Environment Variables
  # add AWS_ACCESS_KEY_ID
  # add AWS_SECRET_ACCESS_KEY   
  backend "s3" {
    bucket = "vidutf"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "vpctestbacks3"
    }
}
