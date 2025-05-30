output "endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.main.endpoint
}

output "arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.main.arn
}

output "id" {
  description = "The RDS instance ID"
  value       = aws_db_instance.main.id
}

output "db_subnet_group_name" {
  description = "The database subnet group name"
  value       = aws_db_subnet_group.main.name
}

output "db_parameter_group_name" {
  description = "The database parameter group name"
  value       = aws_db_parameter_group.main.name
}
