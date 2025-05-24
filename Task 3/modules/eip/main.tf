# Create Elastic IP
resource "aws_eip" "main" {
  domain = "vpc"
  tags   = var.tags
}
