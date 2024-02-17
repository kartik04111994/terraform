/*resource "aws_iam_user" "demo" {
    name = each.key
    for_each = toset(["user1","user2","user3"])
  
}

resource "aws_instance" "demoservers" {
    ami = "ami-0e731c8a588258d0d"
    for_each = {
        key = "t2.micro"
        key2 = "t2.nano"
        
    }
    instance_type = each.value
    key_name = each.key
    tags = {
      name = each.value
    }    
  
} */