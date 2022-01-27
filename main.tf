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

module "ec2module" {
 source = ".//EC2" 
}
