variable "public_subnet_ids" {
  description = "List of public subnet IDs where NAT Gateways will be created"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to nat resources"
  type        = map(string)
}
