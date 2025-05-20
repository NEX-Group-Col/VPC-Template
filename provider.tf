terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "s3" {
    bucket  = "iot-backend-tf2"
    key     = "vpc/iot/terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}