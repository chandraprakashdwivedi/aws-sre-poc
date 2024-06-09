terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "tfstate-files1"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    #Below section can be used if have credential file in default location and have multiple profiles
    # shared_credentials_file = "~/.aws/credentials"
    # profile = "default"
  }
}