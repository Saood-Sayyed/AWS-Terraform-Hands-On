terraform {
  backend "s3" {
    bucket = "saood-backend-bucket"
    key = "backend/terraform.tfstate"#prefix to file 
    region = "us-east-1"
  }
}

