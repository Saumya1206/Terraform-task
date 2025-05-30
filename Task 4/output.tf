output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.subnet.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.subnet.private_subnet_ids
}

output "alb_dns_name" {
  value = module.alb.public_alb_dns
}

output "rds_endpoint" {
  value = module.rds.endpoint
}
