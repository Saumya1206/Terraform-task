# variables.tf file contains variables for the Terraform configuration.
#terraform.tfvars contains the values for the variables defined in this file.

variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "ebs_volume_size" {
  type        = number
  description = "Size of root EBS volume in GB"
}
