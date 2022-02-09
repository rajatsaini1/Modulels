terraform {
  cloud {
    organization = "shreet"

    workspaces {
      name = "rajat-slack"
    }
  }
}

module "ec2module" {
 source = ".//Modules/EC2" 
  instance_type = var.instance_type
}


/*
module "mys3" {
    bucket     = var.bucket
    source     = ".//Modules/s3" 
    name       = var.name
    acl        = var.acl
    
} */
