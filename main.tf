

resource "aws_s3_bucket_versioning" "kfabrik-bucket-01-versioning" {
  bucket = var.s3_bucket
  versioning_configuration {
    status = "Enabled" # Options: Enabled, Suspended, or Disabled

  }
}

resource "aws_vpc" "mqtt_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name        = "mqtt_vpc"
    Environment = var.env_tag

  }
}
#Create security group with firewall rules
resource "aws_security_group" "mqtt-sg" {
  name        = var.security_group
  description = "security group for Ec2 instance"


  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound from mqtt 
  #  egress {
  #   from_port   = 0
  #   to_port     = 65535

  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }


  tags = {
    Name        = var.security_group
    Environment = var.env_tag
  }
}

resource "aws_instance" "mqttInstance" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.mqtt-sg.id]
  tags = {
    Name        = var.ec2_name
    Environment = var.env_tag

  }
}

