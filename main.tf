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
}
  
/*
module "mys3" {
   
    source     = ".//Modules/s3"
  
  
    
} */
