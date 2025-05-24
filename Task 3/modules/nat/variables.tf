variable "public_subnet_id" {
  description = "ID of public subnet where NAT Gateway will be created"
  type        = string
}

variable "eip_allocation_id" {
  description = "EIP allocation ID to associate with the NAT Gateway"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the NAT Gateway"
  type        = map(string)
  default     = {}
}