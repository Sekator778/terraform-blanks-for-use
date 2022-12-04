provider "aws" {}


resource "aws_instance" "my_Ubuntu" {
  ami           = "ami-090f10efc254eaf55"
  instance_type = "t2.micro"

  tags = {
    Name    = "My Ubuntu Server"
    Owner   = "Sekator"
    Project = "Terraform Lessons"
  }
}

resource "aws_instance" "my_Amazon" {
  ami           = "ami-03a71cec707bfc3d7"
  instance_type = "t2.micro"

  tags = {
    Name    = "My Amazon Server"
    Owner   = "Sekator"
    Project = "Terraform Lessons"
  }
}
