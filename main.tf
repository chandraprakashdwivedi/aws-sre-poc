terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
      region = "${var.aws_region}"
    }
  }

  backend "s3" {
    bucket         	   = "tfstate-files"
    key              	 = "state/terraform.tfstate"
    region         	   = "${var.aws_region}"
    encrypt        	   = true
    # dynamodb_table = "mycomponents_tf_lockid"
  }
}