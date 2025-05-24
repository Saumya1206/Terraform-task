resource "aws_subnet" "subnet" {
  vpc_id = data.aws_vpc.default.id
  count = var.count
  cidr_block = var.cidr_block
  availability_zone = var.availability_zone
  tags = var.tags
}

