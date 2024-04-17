provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./Modules/ec2_instance"
  ami_value = "ami-0d7a109bf30624c99" #varaibles name in varaibles.tf file from module
  instance_type_value = "t2.micro" #varaibles name in varaibles.tf file from module
}

#you are writing this main.tf file to use ec2 module ,u need to pass ami-id ,instance type
