terraform {
    required_version = "~> 1.3.7" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "SAGARinfra" {
	ami = "ami-0b5eea76982371e91" 
	instance_type = "t2.micro"
}
