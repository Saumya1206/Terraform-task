# Provider configuration
aws_region  = "eu-north-1"
aws_profile = "default"

# Environment configuration
environment  = "prod"
project_name = "terraform-demo"

# Network configuration
vpc_cidr           = "10.1.0.0/16"
availability_zone  = "eu-north-1a"
public_subnet_cidr = "10.1.1.0/24"
private_subnet_cidr = "10.1.2.0/24"

# Instance configuration
instance_type = "t3.micro"  # Larger instance for production
ami_id       = "ami-0c1ac8a41498c1a9c"  # Amazon Linux 2 AMI in eu-north-1

# Storage configuration
bucket_name = "terraform-demo-prod-bucket"
