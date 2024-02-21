/*resource "aws_instance" "myec2" {
   ami = "ami-0e731c8a588258d0d"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}*/