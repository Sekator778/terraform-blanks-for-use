provider "aws" { // My Root Account
  region = "us-west-2"
}

provider "aws" { // My DEV Account
  region = "us-west-1"
  alias  = "dev"

  assume_role {
    role_arn = "arn:aws:iam::639130796919:role/TerraformRole"
  }
}

provider "aws" { // My PROD Account
  region = "eu-west-2"
  alias  = "prod"

  assume_role {
    role_arn = "arn:aws:iam::032823347814:role/TerraformRole"
  }
}
#--------------------------------------------------------------

module "servers" {
  source        = "./module_servers"
  instance_type = "t2.micro"
  providers = {
    aws.root = aws
    aws.prod = aws.prod
    aws.dev  = aws.dev
  }
}
