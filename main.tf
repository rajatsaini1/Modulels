terraform {
    cloud {
    organization = "rajats"
    workspaces {
      name = "Modules"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.73.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}

/*module "ec2module" {
 source = ".//EC2" 
}*/
        
 resource "aws_instance" "myec2" {
    ami = "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"
  
}
