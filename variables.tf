variable "aws_region" {
  description = "The AWS region to create things in."
  type        = string
  default     = "us-east-2"
}

variable "s3_bucket" {
  description = "The name of the bucket"
  type        = string
  default     = "kfabrik-645975910827-300526-bucket-hv4u8jx11xdjjm"
}

variable "instance_type" {
  description = "instance type for ec2"
  type        = string
  default     = "t3.micro"
}

variable "security_group" {
  description = "Name of security group"
  type        = string
  default     = "mqtt-sgroup-date"
}

variable "ec2_name" {
  description = "Tag Name of for Ec2 instance"
  type        = string
  default     = "mqtt-device-date"
}

variable "ami_id" {
  description = "AMI for Ec2 instance"
  type        = string
  default     = "ami-0fe18bc3cfa53a248"
}

#variable "acl" {
#  description = " Defaults to private "
#  type        = string
#  default     = "private"
#}

variable "env_tag" {
  description = "Tag for Environment"
  type        = string
  default     = "DEMO"
}
