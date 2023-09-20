terraform {
  backend "s3" {
    bucket = "terraform-ajay-state"
    key = "s3creationstatefile-moduletest"
    region = "us-east-1"
    
  }
}
provider "aws" {
    region ="us-east-1" 
}
resource "aws_s3_bucket" "testing" {
    bucket = "testingwithterraf"
}

