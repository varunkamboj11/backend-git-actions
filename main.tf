resource "aws_instance" "multiple_ec2_instances" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "demo-ec2"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-tf-2"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}
