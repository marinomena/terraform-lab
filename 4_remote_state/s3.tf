resource "aws_s3_bucket" "web-images" {
  bucket = "terraform-lab-web-images"
  acl    = "private"
  
  versioning {
    enabled = true
  }

  tags = {
    Name = "terraform-lab-web-images"
    Role = "terraform-lab"
  }
}