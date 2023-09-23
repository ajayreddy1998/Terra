provider "aws" {
   region = "us-east-1"
   profile = "default" 
}

variable "ami" {
  description = "this is to select the ami option "
}

variable "instance_type" {
 description = "this is for the type of instance "

}

module "aws-ec2" {
    source = "./module"
    ami = var.ami
    instance_type = var.instance_type
}
