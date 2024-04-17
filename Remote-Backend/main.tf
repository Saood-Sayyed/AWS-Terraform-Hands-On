provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example1" {
  instance_type = "t2.micro"
  ami = "ami-0d7a109bf30624c99"
}

 resource "aws_s3_bucket" "example_bucket" {
  bucket = "saood-backend-bucket"

  # Condition to check if the bucket already exists
  count  = length(aws_s3_bucket.example_bucket_existing) == 0 ? 1 : 0
}

data "aws_s3_bucket" "example_bucket_existing" {
  bucket = "saood-backend-bucket"

}

#Locking
resource "aws_dynamodb_table" "name" {
  name = "terrafrom-locking"
  billing_mode = ""
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

