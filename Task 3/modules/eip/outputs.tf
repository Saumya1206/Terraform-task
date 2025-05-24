output "eip_id" {
  description = "ID of the Elastic IP"
  value       = aws_eip.main.id
}

output "allocation_id" {
  description = "Allocation ID of the Elastic IP"
  value       = aws_eip.main.allocation_id
}

output "public_ip" {
  description = "Public IP of the Elastic IP"
  value       = aws_eip.main.public_ip
}
