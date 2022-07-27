resource "aws_vpc" "vpc" {
    cidr_block = "10.10.0.0/16"
    tags = {
      Name = "viduvpclb"
    }
}
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.vpc.id
     tags = {
       Name = "vpcig"
    }
}
resource "aws_subnet" "subnet" {
    cidr_block = "10.10.0.0/24"
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = "vidusubnetlb"
    }
}
resource "aws_lb" "lb" {
    name = var.lbname
    internal = false
    load_balancer_type = "network"
    subnets = [aws_subnet.subnet.id]
    enable_deletion_protection = true
    tags = {
      Environment = "production"
    }  
}

module "vpc" {
  
  
}