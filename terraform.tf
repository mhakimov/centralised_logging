terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.13.1"
    }
  }
  required_version = ">=0.14.9"

  backend "s3" {
    bucket = "mcomputing-remote-state"
    key    = "centralised_logging/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}
