variable "security_group_name" {
  type = string
}
variable "security_group_tags" {
  type = map(string)
}

# ingress rule for  the tls_ipv4 

variable "tls_ipv4_from_port" {
  type = string
}
variable "tls_ipv4_ip_protocol" {
  type = string
}
variable "tls_ipv4_to_port" {
  type = number
}
variable "tls_ipv6_from_port" {
  type = number
}
variable  "tls_ipv6_ip_protocol"{
    type = string
}
variable "tls_ipv6_to_port" {
  type = number
}

variable "traffic_ipv4_cidr_block" {
  type = string
}
variable "traffic_ipv4_ip_protocol" {
  type = string
}
variable "traffic_ipv6_cidr_block" {
  type = string
}
variable "traffic_ipv6_ip_protocol" {
  type = string
}