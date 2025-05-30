variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "default-vpc"
}

variable "availability_zones" {
  description = "List of availability zones to use"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "nat_eip_allocation_id" {
  description = "EIP allocation ID for the NAT gateway"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances in the ASG"
  type        = number
}

variable "min_size" {
  description = "Minimum number of EC2 instances in the ASG"
  type        = number
}

variable "db_username" {
  description = "RDS database master username"
  type        = string
}

variable "db_password" {
  description = "RDS database master password"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "Instance class for RDS"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_engine" {
  description = "Database engine (e.g., mysql, postgres)"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage in GB for RDS"
  type        = number
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}

variable "alb_listener_port" {
  description = "Port for ALB listener"
  type        = number
}

variable "alb_target_port" {
  description = "Target port for ALB"
  type        = number
}

variable "ec2_name" {
  description = "Name tag for EC2 instance"
  type        = string
}

variable "user_data" {
  description = "User data script for instances"
  type        = string
  default     = ""
}

variable "instance_profile_name" {
  description = "Name of the instance profile"
  type        = string
  default     = null
}
