variable "vpc_id" {
  type = string
}
variable "cidr_block" {
  type = string
}
variable "internet_gateway_id" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "subnet_id" {
  type = string

}