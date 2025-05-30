output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "private_route_table_ids" {
  description = "IDs of the private route tables"
  value       = aws_route_table.private[*].id
}

output "public_route_table_association_ids" {
  description = "IDs of the public route table associations"
  value       = aws_route_table_association.public[*].id
}

output "private_route_table_association_ids" {
  description = "IDs of the private route table associations"
  value       = aws_route_table_association.private[*].id
}
