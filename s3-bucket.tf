#############################################
// S3 resource creation
##################################

resource "aws_s3_bucket" "demo-bucket" {
    bucket = "terraform-bucket-demo"
    tags = {
      name = "terraform-bucket-demo"      
    }
}
resource "aws_s3_object" "Dev" {
  bucket = aws_s3_bucket.demo-bucket.bucket
  key    = "Dev/"
  acl    = "private"
}
resource "aws_s3_object" "Prod" {
  bucket = aws_s3_bucket.demo-bucket.bucket
  key    = "Prod/"
  acl    = "private"
}

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
terraform {
  backend "s3" {
    bucket = "terraform-bucket-demo"
    key    = "Dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "stateLocktable"  # newly created dynamoDB table 
  }
}





