provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "devo"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}