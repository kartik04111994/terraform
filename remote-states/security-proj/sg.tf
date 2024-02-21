provider "aws" {
    region = "us-east-1"
  
}

resource "aws_security_group" "remote-SG" {
    name = "allow-tls for Remote"
    description = "allow inbound and outbound for remote"
    tags = {
      Name = "remote-SG"
    }  
}

resource "aws_security_group_rule" "ingress" {
    security_group_id = aws_security_group.remote-SG.id
    description = "ingress traffic"
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp" 
    cidr_blocks = ["${data.terraform_remote_state.Eip.outputs.ipaddress}/32" ]
    
}

resource "aws_security_group_rule" "egress" {
    security_group_id = aws_security_group.remote-SG.id
    description = "outbound traffic"
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["${data.terraform_remote_state.Eip.outputs.ipaddress}/32"]
}