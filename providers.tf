provider "aws" {
  region = "us-east-1"
}

/*
terraform {
  backend "s3" {
    bucket = "tf-example-remote-state.us-east-1"
    key = "terrafrom.tfstate"
    region = "us-east-1"
  }
}
*/