locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}
resource "aws_instance" "app-dev" {
    ami = "ami-0e731c8a588258d0d"
    count = 2
    instance_type = "t2.micro"  
    tags = local.common_tags
}

resource "aws_instance" "db-dev" {
    ami = "ami-00d990e7e5ece7974"
    count = 2
    instance_type = "t2.nano"  
    tags = local.common_tags
}

resource "aws_ebs_volume" "Db-volume" {
   size = 8
   availability_zone = "us-east-1d"
   tags = local.common_tags
   
}