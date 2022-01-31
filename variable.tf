variable "instance_type"{
    type = string
    
}

variable "name" {
 type = string   
}

variable "acl" {
 type = string   
}    

variable "versioning" {
 type  = bool
}

variable "mfa_delete" {
 type  = bool
}
