# Local values for dev environment
locals {
  environment = "dev"
  tags = {
    Environment = local.environment
    Project     = var.project_name
    Terraform   = "true"
  }
}
