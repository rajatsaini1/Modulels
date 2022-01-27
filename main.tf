terraform {
  cloud {
    organization = "rajats"

    workspaces {
      name = "Modules"
    }
  }
}


module "ec2module" {
 source = ".//Modules/EC2" 
 instance_type= "t2.nano"
}
