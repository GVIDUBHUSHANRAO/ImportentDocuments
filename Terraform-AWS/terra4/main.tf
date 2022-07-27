resource "aws_vpc" "vpc" {
    cidr_block = "10.10.0.0/16"
    tags = {
      Name = "vidu_tfvpc"
    }
}
resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.10.0.0/24"
    tags = {
      Name = "vidu_tfsubnet"
    }
}
resource "aws_instance" "instance" {
    ami = var.ami
    subnet_id = aws_subnet.subnet.id
    instance_type = "t2.micro"
    tags = {
       Name = "tfinstance"
    }
}
terraform {

  cloud {
    organization = "vidufirstorg"

    workspaces {
      name = "vidunewws"
    }
  }
}