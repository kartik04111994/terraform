data "terraform_remote_state" "Eip" {
  backend = "s3" 
  config = {
    bucket = "terraform-bucket-demo"
    key    = "Eip/terraform.tfstate"
    region = "us-east-1"  
    }
 }


