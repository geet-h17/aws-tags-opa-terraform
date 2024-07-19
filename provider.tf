

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "105b4953-9950-4451-99e2-706bcd7c8672"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
