provider "aws" {
    access_key = "AKIA3MPKOOSR77RAKU6H"
    secret_key = "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"
    region = "ap-south-1"
}
resource "aws_iam_user" "username" {
    for_each = toset(var.username)
    name = each.value
  
}