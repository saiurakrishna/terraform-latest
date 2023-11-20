provider "aws" {
	region = "us-east-1"
}


resource "aws_s3_bucket" "mybucket" {
  bucket = "demo-terraform-s3-backend-srish"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
