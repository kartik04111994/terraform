provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "demoec2" {
    ami = "ami-00d990e7e5ece7974"
    instance_type = "t2.micro"
    count = 2
    tags ={
        Name = "test.${count.index}"
    }  
    lifecycle {
      create_before_destroy = true
    }
}

