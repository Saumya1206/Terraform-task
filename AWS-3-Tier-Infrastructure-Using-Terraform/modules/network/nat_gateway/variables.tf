variable "tags" {
  type = map(string)
}
variable "public_subnet_id" {
  type = string
}
variable "vpc_id_private_route_table" {
  type = string
}
variable "destination_cidr_block_private_routing" {
  type = string
}
variable "for_each" {
  type = map(string)
}
variable "private_subnet_ids" {
  type = set(string)
}