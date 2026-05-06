terraform {
    backend "s3" {
      bucket = "internship-bucket-for-tfstate-files1"
      key = "ecr/terraform.state"
      region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
}