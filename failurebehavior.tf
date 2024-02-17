/*provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "nginx-demo" {
    ami = "ami-0e731c8a588258d0d"
    instance_type = "t2.micro"
    key_name = "terraform-key"
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
    tags = {
      Name = "nginx-hello"
    }
# TERRAFORM WILL FAIL TO PROCEED FURTHER 
 provisioner "remote-exec" {
     on_failure = fail
     inline = [
       "sudo yum -y install nginx"
     ]
   }
# Establishes connection to be used by all
# generic remote provisioners (i.e. file/remote-exec)
connection {
  type = "ssh"
  user = "ec2-user"
  private_key = file("./terraform-key.pem")
  host = self.public_ip
}
}
resource "aws_security_group" "allow-ssh" {
  name = "allow-ssh"
  description = "allow ssh for nginx"
  tags = {
    Name = "nginx-server"
    }
}
resource "aws_security_group_rule" "ssh-rule" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  description = "ingress rule for Allowing SSh"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow-ssh.id
}

/*resource "aws_security_group_rule" "ssh-egress" {
  type = "egress"
  from_port = 0
  to_port = 65535
  protocol = "tcp"
  description = "egress allowed"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow-ssh.id
} */

# output block for IP
/*output "public_ip" {
    value = aws_instance.nginx-demo.public_ip
} */