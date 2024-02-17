/*provider "aws" {
    region = "us-east-1" 
} */

/*variable "dev" {}
variable "prod" {
}
variable "istest" {

}
resource "aws_instance" "test-prod" {
  ami           = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
  count         = var.istest == true ? 2 : 0
  tags = {
    Name = var.prod[count.index]
  }
}

resource "aws_instance" "test-dev" {
  ami           = "ami-00d990e7e5ece7974"
  instance_type = "t2.large"
  count         = var.istest == false ? 2 : 0
  tags = {
    Name = var.dev[count.index]
  }
}*/