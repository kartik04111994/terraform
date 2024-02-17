/*variable "sg_ports" {
    type = list(number)
    description = "ingress ports for sg"
    default = [80,8080,443,554]  
}

resource "aws_security_group" "dynamicsg" {
    name = "dynamic-sg"
    description = "ingress ports"

    tags = {
      name = "dynamicsg"
    }
    
    dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
   
    }
  
} */