#############################################
// S3 resource creation
##################################

/*resource "aws_s3_bucket" "demo-bucket" {
    bucket = "terraform-bucket-demo"
    force_destroy = true
    tags = {
      name = "terraform-bucket-demo"      
    }
}
resource "aws_s3_object" "Dev" {
  bucket = aws_s3_bucket.demo-bucket.bucket
  key    = "Eip/"
  acl    = "private"
  force_destroy = true
}
resource "aws_s3_object" "Prod" {
  bucket = aws_s3_bucket.demo-bucket.bucket
  key    = "SG/"
  acl    = "private"
  force_destroy = true
}
*/












