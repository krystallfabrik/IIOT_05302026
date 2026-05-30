terraform {
  required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.0"
    }
  }
}

provider "aws" {
	  alias = "ohio" 
	  region = "us-east-2"
}

resource "aws_s3_bucket" "mybucket" {
	  bucket = "terraform_backend"
          tags = {
	    Name        = "My bucket"
	    Environment = "DEMO"
  }
}


