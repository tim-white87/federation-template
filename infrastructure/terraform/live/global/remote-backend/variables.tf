variable "aws_region" {
  type = string
  description = "The AWS Region"
  default = "us-east-1"
}

variable "backend_name" {
  type = string
  description = "The name for the remote backend"
  default = "federation"
}