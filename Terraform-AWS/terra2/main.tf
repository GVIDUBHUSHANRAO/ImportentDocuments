data "aws_vpc" "vpc" {
    id = "vpc-096753649285a6b6a"
  
}
resource "aws_subnet" "subnet1" {
    cidr_block = "10.10.0.0/24"
    vpc_id = data.aws_vpc.vpc.id

    tags = {
        Name  = "subnettf1"
    }
  
}
resource "aws_subnet" "subnet2" {
    cidr_block = "10.10.1.0/24"
    vpc_id = data.aws_vpc.vpc.id

    tags = {
        Name  = "subnettf2"
    }
  
}
