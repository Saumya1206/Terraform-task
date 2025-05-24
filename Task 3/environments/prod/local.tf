# Local values for prod environment
locals {
  environment = "prod"
  tags = {
    Environment = local.environment
    Project     = var.project_name
    Terraform   = "true"
  }
}
