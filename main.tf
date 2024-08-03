provider "aws" {
  region = "eu-central-1"
}

resource "aws_amplify_app" "app" {
  name         = "app"
  repository   = var.repo
  access_token = var.access_token

  environment_variables = {
    ENV = "production"
  }
}

resource "aws_amplify_branch" "amplify_branch" {
  app_id      = aws_amplify_app.app.id
  branch_name = "main"
  enable_auto_build = true
  depends_on  = [aws_amplify_app.app]
}