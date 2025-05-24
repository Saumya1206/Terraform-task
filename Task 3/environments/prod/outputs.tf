# VPC Outputs
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = module.vpc.vpc_cidr
}

# Subnet Outputs
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.public_subnet.subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.private_subnet.subnet_id
}

# EC2 Output
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2.instance_id
}

# NAT Gateway Output
output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = module.nat.nat_gateway_id
}

# EIP Output
output "nat_eip_id" {
  description = "ID of the NAT Gateway Elastic IP"
  value       = module.nat_eip.eip_id
}

output "nat_eip_public_ip" {
  description = "Public IP of the NAT Gateway Elastic IP"
  value       = module.nat_eip.public_ip
}
