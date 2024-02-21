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
