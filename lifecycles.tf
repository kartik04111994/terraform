/*provider "aws" {
  region = "us-east-1"
}

/*resource "aws_instance" "demoec2" {
  ami           = "ami-00d990e7e5ece7974"
  instance_type = "t2.micro"
  count         = 1
  tags = {
    Name = "test.${count.index}"
  }

  # 3 lifecycle management 
  // create_before_destroy
  // Prevent_destroy
  // ignore changess

  # Below lifecycle states if any modifications is done in AMI level , instance will
  # first create and then destroy

  /*lifecycle {
      create_before_destroy = true
    } */

  # Below lifecycle prevents the accidental destruction of resources   

  /* lifecycle {
      prevent_destroy = false
    } 

  # Below lifecycle ignore any changes made in current infrastructure outside Terraform

  lifecycle {
    ignore_changes = [tags, instance_type]
  }
*/

