resource "aws_instance" "myec2" {
    ami = "ami-0851b76e8b1bce90b"
    instance_type = var.my_instance_type
  
}
