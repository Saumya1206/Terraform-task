variable "name" {
  description = "Name for the ASG"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
}

variable "min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
}

variable "target_group_arns" {
  description = "List of target group ARNs"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs for ASG"
  type        = list(string)
}

variable "launch_template_id" {
  description = "ID of the launch template"
  type        = string
}

variable "launch_template_version" {
  description = "Version of the launch template to use"
  type        = string
}

variable "health_check_type" {
  description = "EC2 or ELB health check type"
  type        = string
  default     = "ELB"
}

variable "health_check_grace_period" {
  description = "Time after instance comes into service before checking health"
  type        = number
  default     = 300
}

variable "tags" {
  description = "Additional tags for ASG"
  type        = map(string)
  default     = {}
}
