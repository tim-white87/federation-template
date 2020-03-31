terraform {
  required_version = ">= 0.12, < 0.13"

  backend "s3" {
    key            = "dev/postgres/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"

  version = "~> 2.0"
}

locals {
  name = "federation"
}

module "postgres" {
   source = "../../modules/postgres"

  identifier = "${local.name}-dev"
  db_name = local.name
  db_password = var.db_password
}