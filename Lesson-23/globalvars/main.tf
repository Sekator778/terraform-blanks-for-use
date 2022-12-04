#----------------------------------------------------------
# My Terraform
#
# Global Variables in Remote State on S3
#
# Made by Sekator
#----------------------------------------------------------
provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "sekator-project-study-terraform-state"
    key    = "globalvars/terraform.tfstate"
    region = "eu-west-2"
  }
}

#==================================================

output "company_name" {
  value = "DEFAULT Soft International"
}

output "owner" {
  value = "Sekator"
}

output "tags" {
  value = {
    Project    = "Assembly-2020"
    CostCenter = "R&D"
    Country    = "Ukraine"
  }
}
