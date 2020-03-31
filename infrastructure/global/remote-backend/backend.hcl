# backend.hcl
bucket         = "federation-remote-backend"
region         = "us-east-1"
dynamodb_table = "federation-remote-backend-locks"
encrypt        = true
