# Local values for test environment
locals {
  environment = "test"
  tags = {
    Environment = local.environment
    Project     = var.project_name
    Terraform   = "true"
  }
}
