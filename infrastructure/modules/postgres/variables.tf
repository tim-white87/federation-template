variable "db_name" {
  description = "The name to use for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "region" {
  description = "The AWS Region to setup the remote backend in"
  type = string
  default = "us-east-1"
}

variable "username" {
  description = "The database username"
  type = string
  default = "adminuser"
}

variable "allocated_storage" {
  description = "The allocated storage for the database"
  type = string
  default = 10
}

variable "instance_class" {
  description = "Instance class for the database"
  type = string
  default = "db.t2.micro"
}

variable "identifier" {
  description = "The RDS identifier"
  type = string
  default = null
}