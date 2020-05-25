variable "backend_name" {
  description = "The name of the remote backend"
  type        = string
}

variable "region" {
  description = "The AWS Region to setup the remote backend in"
  type = string
  default = "us-east-1"
}