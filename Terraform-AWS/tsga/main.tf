data "aws_security_group" "testsg" {
  id = var.security_group_id
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = data.aws_security_group.testsg.id
  network_interface_id = "eni-067c2d1dd670cd9e2"
}