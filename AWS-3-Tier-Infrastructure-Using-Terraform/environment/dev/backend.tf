terraform {
  backend "s3" {
    bucket         = var.backend_bucket_name
    key            = var.backend_key
    region         = var.backend_region
    encrypt        = true
    dynamodb_table = null  # this is to avoid locks/locking (future)
  }
}
