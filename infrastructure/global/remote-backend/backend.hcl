# backend.hcl
bucket         = "remote-backend-federation"
region         = "us-east-1"
dynamodb_table = "remote-backend-federation-locks"
encrypt        = true
