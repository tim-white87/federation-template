terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-1"

  version = "~> 2.0"
}

module "webserver_cluster" {
  source = "../../../modules/services/cluster"

  cluster_name           = var.cluster_name
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = var.db_remote_state_key
  instance_type = "t2.micro"
  min_size      = 1
  max_size      = 2
}