provider "aws" {
    access_key = "AKIA3MPKOOSR77RAKU6H"
    secret_key = "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"
    region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket = "vidutf2"
    key    = "vidukey3"
    region = "ap-south-1"
  }
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "vpctestbacks3"
    }
}