terraform {
  backend "s3" {
    bucket         = "kfabrik-645975910827-300526-bucket-hv4u8jx11xdjjm"
    key            = "development/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true

  }
}
