resource "aws_security_group" "sg-demo" {
  name        = "demo-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "demo-sg"
  }
}

variable "vpn_ip" {
  default = "116.50.30.50/32"
}

resource "aws_security_group_rule" "example" {
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  cidr_blocks = ["10.0.0.0/8"]
  security_group_id = aws_security_group.sg-demo.id
   
}

/*resource "aws_vpc_security_group_ingress_rule" "allow" {
  security_group_id = aws_security_group.sg-demo.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  
}

resource "aws_vpc_security_group_ingress_rule" "allow2" {
  security_group_id = aws_security_group.sg-demo.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
    
}
resource "aws_vpc_security_group_ingress_rule" "allow3" {
  security_group_id = aws_security_group.sg-demo.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
  
}

resource "aws_vpc_security_group_egress_rule" "allow3" {
  security_group_id = aws_security_group.sg-demo.id
  cidr_ipv4         = var.vpn_ip
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
  
} */