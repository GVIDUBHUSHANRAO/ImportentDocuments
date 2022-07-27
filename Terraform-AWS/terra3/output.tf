output "aws_instance" {
    value = aws_instance.ec2.public_ip
  
}
output "aws_eip" {
    value = aws_eip.eip.public_ip
  
}