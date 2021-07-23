terraform {
    required_version = "~> 0.15.3"
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
	region = "us-east-1"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0dc2d3e4c0f9ebd18" 
	instance_type = "t2.micro"
}