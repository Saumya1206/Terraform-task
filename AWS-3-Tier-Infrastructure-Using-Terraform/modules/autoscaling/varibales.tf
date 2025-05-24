# lunch template
variable "name_prefix" {
  type = string
}

variable "vpc_security_group_ids" {
  type = set(string)
}

variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "device_name" {
  type = string
}

variable "volume_size" {
  type = number
}

variable "volume_type" {
  type = bool
}

variable "delete_on_termination" {
  type = bool
}

variable "associate_public_ip_address" {
  type = bool
}

variable "resource_type" {
  type = string
}


# **************************************auto scaling *************************************************************

variable "name" {
  type = string
}
variable "desired_capacity" {
  type = number
}
variable "min_size" {
  type = number
}
variable "max_size" {
  type = number
}
variable "vpc_zone_identifier" {
  type = set(string)
}
variable "health_check_type" {
  type = string
}
variable "force_delete" {
  type = bool
}
variable "version" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "create_before_destroy" {
  type = bool
}