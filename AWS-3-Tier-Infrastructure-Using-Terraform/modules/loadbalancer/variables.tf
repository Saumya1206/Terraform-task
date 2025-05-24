variable "lb_name" {
  type = string
}
variable "lb_type" {
  type = string
}
variable "lb_prefix" {
  type = string
}
variable "lb_internal" {
  type = string
}
variable "lb_enable_deletion_protection" {
  type = bool
}
variable "lb_enabled" {
  type = bool
}
variable "lb_subnet_ids" {
  type = set(string)
}
variable "lb_tags" {
  type = map(string)
}



# target group variables 
variable "tg_name" {
  type = string
}
variable "tg_port" {
  type = number
}
variable "tg_protocol" {
  type = string
}
variable "tg_target_type" {
  type = string
}
variable "tg_enabled_target_group" {
  type = string
}
variable "tg_healthy_threshold" {
  type = number
}
variable "tg_healthy_threshold" {
  type = number
}
variable "tg_unhealthy_threshold" {
  type = number
}
variable "tg_timeout" {
  type = number
}
variable "tg_internal" {
    type = number
}
variable "tg_path" {
  type = string
}
variable "tg_matcher" {
  type = string
}
variable "tg_tags" {
  type = map(string)
}
# listener varibales 
variable "listener_port" {
  type = number
}
variable "listener_protocol" {
  type = number
}
variable "listener_ssl_policy" {
  type = string
}
variable "listener_certificate_arn" {
  type = string
}
variable "listener_type" {
  type = string
}