##########################################
// DYnamo DB table creations for acquiring STATE_ LOCKING 
###########################################
resource "aws_dynamodb_table" "lockid_table" {
  name           = "stateLocktable"
  hash_key       = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"  # S for Strings
  }

  tags = {
    Name = "stateLocktable"
  }
}

#############################################
// S3 backend for storing state files
##################################
/*terraform {
  backend "s3" {
    bucket = "terraform-bucket-demo"
    key    = "Dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "stateLocktable"  # newly created dynamoDB table 
  }
}*/

