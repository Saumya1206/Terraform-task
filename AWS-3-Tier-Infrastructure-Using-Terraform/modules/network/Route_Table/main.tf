resource "aws_route_table" "Route_Table" {
    vpc_id = var.vpc_id
    route = {
        cidr_block = var.cidr_block
        gateway_id = var.internet_gateway_id
    }
    tags = var.tags
}

resource "aws_route_table_association" "public_association" {
  subnet_id = var.subnet_id
  route_table_id = aws_route_table.public.id
}