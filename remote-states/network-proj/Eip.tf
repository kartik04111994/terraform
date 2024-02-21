provider "aws" {
    region = "us-east-1"
}

resource "aws_eip" "demoip" {
    tags = {
      Name = "demo-elastic Ip"
    }
 
}

output "ipaddress" {
    value = aws_eip.demoip.public_ip  
}