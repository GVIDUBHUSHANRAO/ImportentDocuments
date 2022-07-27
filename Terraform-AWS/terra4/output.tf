output "aws_instance" {
    value = aws_instance.instance.id
}
output "aws_subnet" {
    value = aws_subnet.subnet.cidr_block
  
}