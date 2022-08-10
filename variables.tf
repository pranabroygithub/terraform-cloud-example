variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "vpc_cidr_block" {
    type = string
    description = "it is the IPv4 CIDR block for the VPC"
    default = "10.35.0.0/24"
}

variable "vpc_tag" {
    description = "vpc tag to be attached"
    type = object({
        Name = string
    })
    default = {
      Name = "pranab-test-terraform"
    }
}

variable "instance_tenancy" {
    type = string
    default = "default"
}
