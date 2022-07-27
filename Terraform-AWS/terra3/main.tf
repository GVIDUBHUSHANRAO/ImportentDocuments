resource "aws_eip" "eip" {
    instance = aws_instance.ec2.id
    vpc      = true
    depends_on = [
      aws_instance.ec2
    ]
  
}
resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.itype
  
}
terraform {
  backend "s3" {
      bucket = "vidutf"
      key = "key1"
      region = "ap-south-1"
}
}