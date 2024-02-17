/*resource "aws_instance" "testec2" {
  ami = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = var.name[count.index]
  }
}*/