variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "is_public" {
  description = "Whether the subnet is public (true) or private (false)"
  type        = bool
  default     = false
}

variable "name" {
  description = "Name for the subnet"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the subnet"
  type        = map(string)
  default     = {}
}
