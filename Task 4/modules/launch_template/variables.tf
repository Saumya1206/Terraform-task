variable "name" {
  description = "Name for the launch template"
  type        = string
}

variable "ami_id" {
  description = "ID of the AMI to use for instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "associate_public_ip" {
  description = "Whether to associate public IP to instances"
  type        = bool
  default     = false
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "instance_profile_name" {
  description = "Name of the instance profile"
  type        = string
}

variable "user_data" {
  description = "User data script for instances"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "tags" {
  description = "Additional tags for instances"
  type        = map(string)
  default     = {}
}
