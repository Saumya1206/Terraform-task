output "nat_gateway_ids" {
  description = "List of NAT Gateway IDs"
  value       = aws_nat_gateway.main[*].id
}

output "nat_gateway_eips" {
  description = "List of Elastic IP addresses of NAT Gateways"
  value       = aws_eip.nat[*].public_ip
}
