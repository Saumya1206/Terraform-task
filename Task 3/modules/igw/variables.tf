variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "name" {
  description = "Name tag for the IGW"
  type        = string
  default     = "main"
}

variable "tags" {
  description = "Tags to apply to the IGW"
  type        = map(string)
  default     = {}
}
