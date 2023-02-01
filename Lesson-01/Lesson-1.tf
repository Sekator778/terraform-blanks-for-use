provider "aws" {}


resource "aws_instance" "my_Ubuntu" {
  ami           = "ami-03e08697c325f02ab"
  instance_type = "t2.micro"
#  count         = 3 // count resourse


  tags = {
    Name    = "My Ubuntu Server"
    Owner   = "Sekator"
    Project = "Terraform Lessons"
  }
}

resource "aws_instance" "my_Amazon" {
  ami           = "ami-06c39ed6b42908a36"
  instance_type = "t2.micro"

  tags = {
    Name    = "My Amazon Server"
    Owner   = "Sekator"
    Project = "Terraform Lessons"
  }
}
