provider "aws" {
    access_key = "AKIA3MPKOOSR77RAKU6H"
    secret_key = "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"
    region = "ap-south-1"
}

resource "aws_s3_bucket" "vidu" {
    bucket = "vidubacktf"
  
}