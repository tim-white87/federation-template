resource "aws_cognito_user_pool" "data-service-project-pool" {
  name = "data-service-project"
}

resource "aws_cognito_user_pool_client" "data-service-project-client" {
  name = "data-service-project-client"

  user_pool_id                         = aws_cognito_user_pool.data-service-project-pool.id
  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows                  = ["code", "implicit"]
  callback_urls                        = ["http://localhost:3000/", "https://${aws_cloudfront_distribution.s3_distribution.domain_name}/"]
  allowed_oauth_scopes                 = ["email", "openid", "profile"]
  supported_identity_providers         = ["COGNITO"]
}

resource "aws_cognito_user_pool_domain" "main" {
  domain       = "data-service-project"
  user_pool_id = aws_cognito_user_pool.data-service-project-pool.id
}
