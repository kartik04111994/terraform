/*locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}
 
variable "prod" {
  default = [ "prod-instance1", "prod-instance2" ]
} 
variable "dev" {
    default = [ "dev-instance1", "dev-instance2" ]
}

variable "ebs" {
 default = "demo-ebs"  
}

resource "aws_instance" "app-prod" {
    ami = "ami-0e731c8a588258d0d"
    count = 2
    instance_type = "t2.micro"  
    tags = merge(local.common_tags, { Name = var.prod[count.index] })
}

resource "aws_instance" "db-prod" {
    ami = "ami-00d990e7e5ece7974"
    count = 2
    instance_type = "t2.nano"  
    tags = merge(local.common_tags, { Name = var.dev[count.index] })
}

resource "aws_ebs_volume" "Db-volume" {
   size = 8
   availability_zone = "us-east-1d"
   tags = merge(local.common_tags, { Name = var.ebs })
   
}*/