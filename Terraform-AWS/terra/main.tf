provider "aws" {}
resource "aws_vpc" "terraform" {
    cidr_block = "192.168.0.0/16"
    instance_tenancy = "default"
    tags = {
        Name = "vidu_tf_vpc"
  }  
}
resource "aws_s3_bucket" "terraform" {
    bucket = "vidutfs3"
    tags = {
        Name        = "Vidu bucket"
        Environment = "Dev"
  }
}
