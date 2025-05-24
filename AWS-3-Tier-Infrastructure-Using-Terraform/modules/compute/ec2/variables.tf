variable "count" {
  type = number
}

variable "ami_value" {
  type = string
  description = "this values is used to set ami value of the instance"
}

variable "type"{
  type = string
  description = "this value is used to set the instance type"
}

variable "subnet_id" {
   type = string
   description = "subnet_id  for the particular instance for the frontend"
}

variable "vpc_security_group_ids"{
  type = set(string)
}

variable "key_name" {
  type = string
}

variable "associate_public_ip_address" {
  type = bool
}

variable "volume_size" {
  type = number
}

variable "volume_type" {
  type = string
}

variable "delete_on_termination" {
  type = bool
}


variable "name" {
  type = string
}
variable "Role" {
  type = string
}

variable "Owner" {
  type = string
}

variable "Project" {
  type = string
}

variable "Environment" {
  type = string
}