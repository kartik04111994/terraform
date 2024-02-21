#############################################
// S3 resource creation
##################################

resource "aws_s3_bucket" "demo-bucket" {
    bucket = "terraform-bucket-demo"
    tags = {
      name = "terraform-bucket-demo"
      
    }
  
}*/

#############################################
// S3 backend for storing state files
##################################

terraform {
  backend "s3" {
    bucket = "terraform-bucket-demo"
    key    = "Dev/terraform.tfstate"
    region = "us-east-1"
  }
}


