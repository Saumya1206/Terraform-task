output "default_sg_id" {
  description = "ID of the default security group"
  value       = aws_security_group.default.id
}
