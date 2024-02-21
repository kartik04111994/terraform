/*resource "aws_instance" "myec2" {
   ami = "ami-0e731c8a588258d0d"
   instance_type = "t2.micro"
   tags = {
     name = "linux"
     Name = "demo-linux"
   }

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}

resource "aws_iam_user" "demo-user" {
  name = "kartik"
  
}

######################################
/* commands used
1.terraform state list
2.terraform state mv aws_instance.myec2 aws_instance.demokars ## to prevent creating and destroying the resource
3.terraform state rm aws_instance.demokars { for removing the resources 
terraform won't track anymore but resource will exist in AWS}
4. terraform state pull  {for pulling the remote state from from remote to local} */