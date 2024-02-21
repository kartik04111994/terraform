## for storing statefile to S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-demo"
    key    = "Eip/terraform.tfstate"
    region = "us-east-1"    
  }
}