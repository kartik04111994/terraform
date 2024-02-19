provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "myfirst" {
    ami = "ami-0e731c8a588258d0d"
    instance_type = lookup(var.instance_type,terraform.workspace)
    count = 1
    tags ={
        Name = "test.${count.index}"
    }  
}
# splat expression [*] for seeing all the arns of the created resource
/*output "arns" {
  value = aws_instance.myfirst[*].arn
}

# splat expression [*] for seeing all the IDs of the created resource
# splat expression [0] for seeing IDs of first instance of the created resource
*/
