output "public_alb_arn" {
  description = "ARN of the public ALB"
  value       = aws_lb.public.arn
}

output "private_alb_arn" {
  description = "ARN of the private ALB"
  value       = aws_lb.private.arn
}

output "public_alb_dns" {
  description = "DNS name of the public ALB"
  value       = aws_lb.public.dns_name
}

output "private_alb_dns" {
  description = "DNS name of the private ALB"
  value       = aws_lb.private.dns_name
}

output "example_target_group_arn" {
  description = "ARN of the example target group"
  value       = aws_lb_target_group.example.arn
}
