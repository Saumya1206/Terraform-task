resource "aws_security_group" "allow_tls" {
  name        = var.security_group_name
  vpc_id      = aws_vpc.vpc_id.id
  tags = var.security_group_tags
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_vpc.vpc_cidr_block.cidr_block
  from_port         = var.tls_ipv4_from_port
  ip_protocol       = var.tls_ipv4_ip_protocol
  to_port           = var.tls_ipv4_to_port
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv6         = aws_vpc.main.ipv6_cidr_block
  from_port         = var.tls_ipv6_from_port
  ip_protocol       = var.tls_ipv6_ip_protocol
  to_port           = var.tls_ipv6_to_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.traffic_ipv4_cidr_block
  ip_protocol       = var.traffic_ipv4_ip_protocol # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv6         =   var.traffic_ipv6_cidr_block
  ip_protocol       =   var.traffic_ipv6_ip_protocol# semantically equivalent to all ports
}