output "key_name" {
  description = "Name of the created key pair"
  value       = aws_key_pair.main.key_name
}

output "key_pair_id" {
  description = "ID of the created key pair"
  value       = aws_key_pair.main.key_pair_id
}
