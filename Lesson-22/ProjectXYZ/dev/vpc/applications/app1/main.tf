Future Terraform Code :)

Do it yourself!

terraform {
  backend "s3" {
    bucket = "sekator-project-study-terraform-state"      // Bucket where to SAVE Terraform State
    key    = "dev/vpc/applications/app1/terraform.tfstate"    // Object name in the bucket to SAVE Terraform State
    region = "eu-west-2"                                      // Region where bucket created
  }
}
