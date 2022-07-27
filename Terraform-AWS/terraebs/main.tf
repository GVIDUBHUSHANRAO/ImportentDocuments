resource "aws_ebs_volume" "viduvol" {
    size = 10
    tags = {
      Name = "vol1"
    }
    availability_zone = "ap-south-1a"
}
output "aws_ebs_volume" {
    value = aws_ebs_volume.viduvol.id
}