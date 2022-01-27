terraform {
  cloud {
    organization = "rajats"

    workspaces {
      name = "Modules"
    }
  }
}

required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.73.0"
    }
  }

module "ec2module" {
 source = ".//Modules/EC2" 
}
