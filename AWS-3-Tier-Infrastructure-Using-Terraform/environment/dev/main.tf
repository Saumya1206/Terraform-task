# Route Table
module "route_Table" {
  source = "../../modules/network/Route_Table"
  vpc_id = var.vpc_id_route_table
  cidr_block = var.cidr_block_route_table
  tags = var.tags_route_table
  subnet_id = var.subnet_id_route_table
  internet_gateway_id = var.internet_gateway_id
}
# Natgateway

module "nat_gateway" {
  source = "../../modules/network/nat_gateway"
  tags = var.tags_nat_gateway
  public_subnet_id = var.public_subnet_id_nat_gateway
  vpc_id_private_route_table = var.vpc_id_private_route_table_nat_gateway
  destination_cidr_block_private_routing = var.destination_cidr_block_private_routing.nat_gateway
  for_each = var.for_each_nat_gateway
  private_subnet_ids = var.private_subnet_ids_nat_gateway

}
module "keypair" {
  source = "../../modules/keypair"
  key_name = var.ssh_key_name
  public_key = var.public_key
}

#Internet Gateway
module "internet_gateway" {
  source = "../../modules/network/internet_gateway"
  vpc_id = var.vpc_id_internet_gateway
  tags = var.tags_internet_gateway
}
#Application Load balancer
module "application_load_balancer" {
  source = "../../modules/loadbalancer"
  lb_name = var.lb_name
  lb_type = var.lb_type
  lb_prefix = var.lb_prefix
  lb_internal = var.lb_internal
  lb_enable_deletion_protection = var.lb_enable_deletion_protection
  lb_enabled = var.lb_enabled
  lb_subnet_ids = var.lb_subnet_ids
  lb_tags = var.lb_tags
  tg_name = var.tg_name
  tg_path = var.tg_path
  tg_port = var.tg_port
  tg_protocol = var.tg_protocol
  tg_healthy_threshold = var.tg_healthy_threshold
  tg_unhealthy_threshold = var.tg_unhealthy_threshold
  tg_timeout = var.tg_timeout
  tg_target_type = var.tg_target_type
  tg_enabled_target_group = var.tg_enabled_target_group
  tg_internal = var.tg_internal
  tg_matcher = var.tg_matcher
  tg_tags = var.tg_tags
  listener_port = var.listener_port
  listener_certificate_arn = var.listener_certificate_arn
  listener_protocol = var.listener_protocol
  listener_ssl_policy = var.listener_ssl_policy
  listener_type = var.listener_type
}

#VPC template 

module "VPC" {
  source = "../../modules/network/vpc"
  cidr_block =  var.cidr_block_vpc
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  name = var.name
}

#Security Group

module "Security_Group" {
  source = "../../modules/security_group"
  # security group allow tls
  security_group_name = var.security_group_name
  security_group_tags = var.security_group_tags
  # ingress tls for the ipv4 ports
  tls_ipv4_from_port = var.tls_ipv4_from_port
  tls_ipv4_ip_protocol = var.tls_ipv4_ip_protocol
  tls_ipv4_to_port = var.tls_ipv4_to_port
  tls_ipv6_from_port = var.tls_ipv6_from_port
  tls_ipv6_ip_protocol = var.tls_ipv6_ip_protocol
  tls_ipv6_to_port = var.tls_ipv6_to_port

  traffic_ipv4_cidr_block = var.traffic_ipv4_cidr_block
  traffic_ipv4_ip_protocol = var.traffic_ipv4_ip_protocol
  traffic_ipv6_cidr_block = var.traffic_ipv6_cidr_block
  traffic_ipv6_ip_protocol = var.traffic_ipv6_ip_protocol

}

#Frontend Code 

module "Frontend_subnet" {
  source = "../../modules/network/subnets"
  count = var.count
  cidr_block = var.cidr_block_subnet
  availability_zone = var.availability_zone
  tags = var.tags_subnet
}

module "Frontend_instances" {
  source = "../../modules/compute/ec2"
  count = var.count
  ami_value = var.ami_value
  type = var.type
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  volume_size = var.volume_size
  volume_type = var.volume_type
  delete_on_termination = var.delete_on_termination
  name = var.name
  Role = var.Role
  Owner = var.Owner
  Project = var.Project
  Environment = var.Environment
}

# this is the auto scaling part of the frontend part
module "AutoScaling" {
  source = "../../modules/autoscaling"
# launch template varibales for the autoscaling 

  name_prefix = var.name_prefix
  vpc_security_group_ids = var.vpc_security_group_ids
  image_id = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
  device_name = var.device_name
  volume_size = var.volume_size
  volume_type = var.volume_type
  delete_on_termination = var.delete_on_termination
  associate_public_ip_address = var.associate_public_ip_address
  resource_type = var.resource_type
  tags = var.tags
  
# autoscaling variables in the folder

  name = var.name
  desired_capacity = var.desired_capacity
  min_size = var.min_size
  max_size = var.max_size
  vpc_zone_identifier = var.vpc_zone_identifier
  health_check_type = var.health_check_type
  force_delete = var.force_delete
  version = var.version
 
  create_before_destroy = var.create_before_destroy
}



#Backend Tier Code

module "Backend_subnet" {
  source = "../../modules/network/subnets"
  count = var.count
  cidr_block = var.cidr_block_subnet
  availability_zone = var.availability_zone
  tags = var.tags_subnet
}

module "backend_instances" {
  source = "../../modules/compute/ec2"
  count = var.count
  ami_value = var.ami_value
  type = var.type
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  volume_size = var.volume_size
  volume_type = var.volume_type
  delete_on_termination = var.delete_on_termination
  name = var.name
  Role = var.Role
  Owner = var.Owner
  Project = var.Project
  Environment = var.Environment
}

module "AutoScaling" {
  source = "../../modules/autoscaling"

# launch template varibales for the autoscaling 
  name_prefix = var.name_prefix
  vpc_security_group_ids = var.vpc_security_group_ids
  image_id = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
  device_name = var.device_name
  volume_size = var.volume_size
  volume_type = var.volume_type
  delete_on_termination = var.delete_on_termination
  associate_public_ip_address = var.associate_public_ip_address
  resource_type = var.resource_type
  tags = var.tags
  
# autoscaling variables in the folder

  name = var.name
  desired_capacity = var.desired_capacity
  min_size = var.min_size
  max_size = var.max_size
  vpc_zone_identifier = var.vpc_zone_identifier
  health_check_type = var.health_check_type
  force_delete = var.force_delete
  version = var.version
 
  create_before_destroy = var.create_before_destroy
}

#Database Tier code
module "database" {
  source = "../../modules/database"
  database_cluster_identifier = var.database_cluster_identifier
  database_cluster_engine = var.database_cluster_engine
  database_cluster_engine_version = var.database_cluster_engine_version
  database_cluster_availability_zones = var.database_cluster_availability_zones
  database_cluster_backup_retention_period = var.database_cluster_backup_retention_period
  database_cluster_master_password = var.database_cluster_master_password
  database_cluster_master_username = var.database_cluster_master_username
  database_cluster_preferred_backup_window = var.database_cluster_preferred_backup_window
  database_instance_count = var.database_instance_count
  database_instance_identifier = var.database_instance_identifier
  database_instance_instance_class = var.database_instance_instance_class
  database_name = var.database_name
}