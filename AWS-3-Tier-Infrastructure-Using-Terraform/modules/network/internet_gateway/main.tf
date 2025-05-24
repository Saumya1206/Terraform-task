resource "aws_internet_gateway" "Internet_Gateway" {
    vpc_id = var.vpc_id
    tags =var.tags
}   