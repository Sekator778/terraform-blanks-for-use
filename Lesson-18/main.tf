#----------------------------------------------------------
# My Terraform
#
# Terraform Loops: Count and For if
#
# Made by Sekator
#----------------------------------------------------------
provider "aws" {
  region = "eu-west-2"
}


resource "aws_iam_user" "user1" {
  name = "simple_user"
}

resource "aws_iam_user" "users" {
  count = length(var.aws_users)
  name  = element(var.aws_users, count.index)
}

#----------------------------------------------------------------

resource "aws_instance" "servers" {
  count         = 3
  ami           = "ami-07ab3281411d31d04"
  instance_type = "t2.micro"
  tags = {
    Name = "Server Number ${count.index + 1}"
  }
}
