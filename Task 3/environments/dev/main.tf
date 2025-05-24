locals {
  common_tags = {
    Environment = var.environment
    Managed     = "terraform"
    Project     = var.project_name
  }
}

# VPC
module "vpc" {
  source = "../../modules/vpc"
  
  cidr_block = var.vpc_cidr
  tags       = local.common_tags
}

# Public Subnet
module "public_subnet" {
  source = "../../modules/subnet"
  
  vpc_id            = module.vpc.vpc_id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.availability_zone
  is_public         = true
  name             = "${var.environment}-public"
  tags             = local.common_tags
}

# Private Subnet
module "private_subnet" {
  source = "../../modules/subnet"
  
  vpc_id            = module.vpc.vpc_id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone
  is_public         = false
  name             = "${var.environment}-private"
  tags             = local.common_tags
}

# Internet Gateway
module "igw" {
  source = "../../modules/igw"
  
  vpc_id = module.vpc.vpc_id
  name   = var.environment
  tags   = local.common_tags
}

# NAT Gateway EIP
module "nat_eip" {
  source = "../../modules/eip"
  tags   = merge(local.common_tags, {
    Name = "${var.environment}-nat-eip"
  })
}

# NAT Gateway
module "nat" {
  source = "../../modules/nat"
  
  public_subnet_id  = module.public_subnet.subnet_id
  eip_allocation_id = module.nat_eip.allocation_id
  tags             = merge(local.common_tags, {
    Name = "${var.environment}-nat"
  })

  depends_on = [module.public_subnet, module.nat_eip]
}

# EC2 Instance
module "ec2" {
  source = "../../modules/ec2"
  
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.private_subnet.subnet_id
  tags          = merge(local.common_tags, {
    Name = "${var.environment}-instance"
  })
}

# S3 Bucket
module "s3" {
  source      = "../../modules/s3"
  bucket_name = "${var.environment}-${var.bucket_name}"
  tags        = local.common_tags
}
