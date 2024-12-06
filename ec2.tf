variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
}


variable "instance_ami" {
  type = string
  default = "ami-0084a47cc718c111a"
  
}
# (1). Declare the provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0" 
    }
  }
}

# (2) Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "sandbox"
 
}