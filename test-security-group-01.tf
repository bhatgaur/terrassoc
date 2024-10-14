/*
resource "aws_security_group" "test-security-group-01" {
  name        = "test-security-group-01"
  description = "Managed from terraform"
}

resource "aws_vpc_security_group_ingress_rule" "test-ingress-rule-01" {
  security_group_id = aws_security_group.test-security-group-01.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "test-egress-rule-01" {
  security_group_id = aws_security_group.test-security-group-01.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
*/