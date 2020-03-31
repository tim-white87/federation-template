terraform {
  required_version = ">= 0.12, < 0.13"

  backend "s3" {
    key            = "global/remote-backend/terraform.tfstate"
  }
}

provider "aws" {
  region = var.region

  version = "~> 2.0"
}

module "remote-backend" {
  source = "../../modules/remote-backend"

  backend_name = var.backend_name
}
