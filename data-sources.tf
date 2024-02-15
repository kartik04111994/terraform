#EVeyrtime user can't remember the AMI ID's for the launch. Hence we can use Data source
#for the requirement

provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "demo_ami" {
  most_recent = "true"
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
  
}

resource "aws_instance" "myfirst" {
    ami = data.aws_ami.demo_ami.id
    instance_type = "t2.micro"

    tags = {
        Name = "test"
    }  
} 