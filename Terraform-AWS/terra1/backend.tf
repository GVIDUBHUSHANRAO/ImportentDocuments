terraform {
  backend "s3" {
    bucket = "vidutf"
    key    = "vidukey3"
    region = "ap-south-1"
  }
}