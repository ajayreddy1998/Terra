provider "aws" {
 region = "us-east-1"
 profile = "default"
}

variable "ami" {

    description = "this is to determine the valu of the ami image" 
}

variable "instance_type" {
    description = "this is to detrmine the value of the instance type "
}  

resource "aws_instance" "ec-2" {
   ami = var.ami
   instance_type = var.instance_type
   key_name = "linux"
}
