
#VPC configuration variables 
variable "cidr_block_vpc" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}
variable "enable_dns_support" {
  type = bool
}

variable "name" {
  type = string
}
# security group variables
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
#EC2 config variables

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

#Subnet config varibales
variable "count" {
  type = string
}

variable "tags_subnet" {
  type = map(string)
}
variable "cidr_block_subnet" {
  type = string
}
variable "availability_zone" {
  type = string
}

#lunch template 
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

#Auto scaling

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

#Nat_gateway
variable "tags_nat_gateway" {
  type = map(string)
}
variable "public_subnet_id_nat_gateway" {
  type = string
}
variable "vpc_id_private_route_table_nat_gateway" {
  type = string
}
variable "for_each_nat_gateway" {
  type = map(string)
}
variable "private_subnet_ids_nat_gateway" {
  type = set(string)
}
#Route table
variable "vpc_id_route_table" {
  type = string
}
variable "cidr_block_route_table" {
  type = string
}
variable "subnet_id_route_table" {
  type = string
}
variable "internet_gateway_id" {
  type = string
}
variable "tags_route_table" {
  type = map(string)
}

#Internet_gateway
variable "vpc_id_internet_gateway" {
  type = string
}
variable "tags_internet_gateway" {
  type = map(string)
}

#Loadbalancer
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

# SSH -KEY NAME
variable "ssh_key_name" {
  type = string
}
variable "public_key" {
  type = string
}

# database template variables
variable "database_cluster_identifier" {
  type = string
}
variable "database_cluster_engine" {
  type = string
}
variable "database_cluster_engine_version" {
  type = string
}
variable "database_cluster_availability_zones" {
  type = set(string)
}
variable "database_name" {
  type = string
}
variable "database_cluster_master_username" {
  type = string

}
variable "database_cluster_master_password" {
  type = string
}
variable "database_cluster_backup_retention_period" {
  type = string
}
variable "database_cluster_preferred_backup_window" {
  type = string
}

# instance for the database the variables are defiend here

variable "database_instance_count" {
  type = number
}
variable "database_instance_identifier" {
  type = string
}
variable "database_instance_instance_class" {
  type = string
}