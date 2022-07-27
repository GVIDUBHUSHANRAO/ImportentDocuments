resource "aws_instance" "instance" {
    ami = var.ami
    instance_type = "t2.micro"
    count = 3
}
output "aws_instance" {
    value = [ for id in  : id ]
}