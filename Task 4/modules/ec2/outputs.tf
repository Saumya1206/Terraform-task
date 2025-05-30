output "instance_ids" {
  description = "IDs of created instances"
  value       = aws_instance.main[*].id
}

output "private_ips" {
  description = "Private IP addresses of created instances"
  value       = aws_instance.main[*].private_ip
}

output "public_ips" {
  description = "Public IP addresses of created instances"
  value       = aws_instance.main[*].public_ip
}
