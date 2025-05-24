# Basic EC2 Variables
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

variable "tags" {
  description = "Tags for EC2 instance"
  type        = map(string)
  default     = {}
}