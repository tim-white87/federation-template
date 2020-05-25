terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = var.region

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_db_instance" "database" {
  engine              = "postgres"
  name                = var.db_name
  username            = var.username
  password            = var.db_password
  allocated_storage   = var.allocated_storage
  instance_class      = var.instance_class
  identifier = var.identifier
  skip_final_snapshot = true
}