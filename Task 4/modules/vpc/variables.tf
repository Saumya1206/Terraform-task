variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}
variable "tags" {
  description = "Tags to apply to vpc resources"
  type        = map(string)
}