resource "aws_instance" "multiple_ec2_instances" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "demo-ec2"
  }
}

terraform {
    backend "s3" {
    bucket = "day0day01"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

variable "branch_name" {
  description = "The name of the branch that's being deployed"
}

####
########
