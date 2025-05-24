resource "aws_eip" "nat_gateway" {
    tags = var.tags
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id = var.public_subnet_id
  tags = var.tags
  depends_on = [ aws_internet_gateway.Internet_Gateway]
}

resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id_private_route_table
  tags = var.tags
}

resource "aws_route" "private_nat_route" {
  route_table_id = aws_route_table.private_route_table.id
  destination_cidr_block = var.destination_cidr_block_private_routing
  nat_gateway_id = aws_nat_gateway.nat.id
}

resource "aws_route_table_association" "private_subnet_association" {
  for_each = toset(var.private_subnet_ids)
  subnet_id = each.key
  route_table_id = aws_route_table.private_route_table.id
}