/*
resource "aws_eip" "test-eip-01" {
    domain = "vpc"
}

resource "aws_security_group" "test-attribute-sg-01" {
  name        = "test-attribute-sg-01"
  
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.test-attribute-sg-01.id
  cidr_ipv4         = "${aws_eip.test-eip-01.public_ip}/32"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}
*/