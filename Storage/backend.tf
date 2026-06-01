terraform {
  required_version = ">= 1.5.5"
  backend "s3" {
    bucket  = var.s3_bucket
    key     = "development/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true

  }
}
