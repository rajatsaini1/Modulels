terraform {
    cloud {
    organization = "rajats"
    workspaces {
      name = "Modulels"
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
 source = ".//Modules/EC2" 
}

module "mys3" {
  source = ".//Modules/s3" 

  source = "index.html"

} 

}
