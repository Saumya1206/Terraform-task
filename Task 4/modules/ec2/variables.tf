variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "ID of the AMI to use"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where instances can be created"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "instance_profile_name" {
  description = "Name of the instance profile"
  type        = string
  default     = null
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 30
}

variable "root_volume_type" {
  description = "Type of the root volume"
  type        = string
  default     = "gp3"
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = null
}

variable "name" {
  description = "Name prefix for the instances"
  type        = string
}

variable "tags" {
  description = "Additional tags for instances"
  type        = map(string)
  default     = {}
}
