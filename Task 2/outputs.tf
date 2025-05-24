output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.subnet.subnet_id
}

output "instance_id" {
  value = module.ec2.instance_id
}
