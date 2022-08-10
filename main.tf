provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy
  tags = var.vpc_tag
}


# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "ubuntu" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instance_name
#   }
# }
