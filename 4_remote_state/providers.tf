terraform {
  backend "s3" {
    bucket  = "terraform-lab-tfstate"
    key     = "tfstate"
    region  = local.aws-region
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.68.0"
    }
  }
}

provider "aws" {
  region = local.aws-region
}
