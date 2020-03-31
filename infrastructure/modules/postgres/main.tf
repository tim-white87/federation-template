terraform {
  required_version = ">= 0.12, < 0.13"
}

terraform {
  backend "s3" {

    # This backend configuration is filled in automatically at test time by Terratest. If you wish to run this example
    # manually, uncomment and fill in the config below.

    # bucket         = "<YOUR S3 BUCKET>"
    key            = "dev/data-stores/postgres/terraform.tfstate"
    # region         = "us-east-2"
    # dynamodb_table = "<YOUR DYNAMODB TABLE>"
    # encrypt        = true

  }
}

provider "aws" {
  region = "us-east-1"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "federation"
  engine              = "postgres"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"

  username            = "adminuser"

  name                = var.db_name
  skip_final_snapshot = true

  password            = var.db_password
}