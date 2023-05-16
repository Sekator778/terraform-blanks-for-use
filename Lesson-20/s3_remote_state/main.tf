#terraform {
#  backend "s3" {
#    bucket = "sekator-project-study-terraform-state"
#    key    = "global/s3/terraform.tfstate"
#    region = "eu-west-2"
#    dynamodb_table = "terraform-state-locking"
#    encrypt = true
#  }
# terraform init -backend-config="access_key=xxx" -backend-config="secret_key=x/xx"
#}
provider "aws" {
  region     = "eu-west-2"
  access_key = "xx"
  secret_key = "xx/xx"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "sekator-project-study-terraform-state"

  lifecycle {
    prevent_destroy = false
  }
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}


resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}