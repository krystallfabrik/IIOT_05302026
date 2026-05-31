variable "aws_region" {
       description = "The AWS region to create things in." 
       default     = "us-east-2" 
}

variable "s3_bucket" {
       desription = "The name of the bucket"
       default    = "kfabrik-645975910827-300526-bucket-hv4u8jx11xdjjm"
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "310526key" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t3.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "mqtt-sgroup-date" 
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "mqtt-device-date" 
} 

variable "ami_id" { 
    description = "AMI for Ec2 instance" 
    default     = "ami-0fe18bc3cfa53a248" 
}

variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
