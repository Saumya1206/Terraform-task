output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "vpc_owner" {
  value = aws_vpc.vpc.owner_id
}
output "vpc_cidr_block" {
  value = aws_vpc.vpc.cidr_block
}