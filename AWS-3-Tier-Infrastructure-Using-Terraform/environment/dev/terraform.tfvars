cidr_block_vpc = "10.0.0.0/16"
enable_dns_hostnames = true
enable_dns_support = true
name = ""
count = 1
ami_value = "ami-0abc12345def67890"
type = "t3.micro"
subnet_id = "subnet-6a2d1ebc"
vpc_security_group_ids = ["sg-0123456789abcdef0"]
associate_public_ip_address = false
volume_size = 20
volume_type = "gp2"
delete_on_termination = true
Role = "web"
Project = "AWS 3 tier"
Environment = "dev"
tags_subnet = { Name = "app-subnet" }
cidr_block_subnet = "10.0.1.0/24"
availability_zone = "us-east-1a"
name_prefix = "dev"
Owner = "Lakshit"
image_id = "ami-0abc12345def67890"
instance_type = "t3.micro"
device_name = "/dev/xvda"
resource_type = "instance"
desired_capacity = 1
min_size = 1
max_size = 2
vpc_zone_identifier = ["subnet-77e8b631", "subnet-2457cf52"]
key_name = "lukky.pem"
health_check_type = "EC2"
force_delete = true
version = "v1"
tags = { Project = "AdaptEd", Environment = "dev" }
create_before_destroy = true
tags_nat_gateway = { Name = "nat-gateway" }
public_subnet_id_nat_gateway = "subnet-6a2d1ebc"
vpc_id_private_route_table_nat_gateway = "vpc-01234567"
for_each_nat_gateway = { gw1 = "gw1" }
private_subnet_ids_nat_gateway = ["subnet-77e8b631", "subnet-2457cf52"]
vpc_id_route_table = "vpc-01234567"
cidr_block_route_table = "0.0.0.0/0"
subnet_id_route_table = "subnet-6a2d1ebc"
internet_gateway_id = "igw-0123456789abcdef0"
tags_route_table = { Name = "route-table" }
vpc_id_internet_gateway = "vpc-01234567"
tags_internet_gateway = { Name = "internet-gateway" }
lb_name = "adapted-lb"
lb_type = "application"
lb_prefix = "adapted"
lb_internal = false
lb_enable_deletion_protection = false
lb_enabled = true
lb_subnet_ids = ["subnet-6a2d1ebc", "subnet-6ea3aa5e"]
lb_tags = { Environment = "dev", Project = "AdaptEd" }
tg_name = "adapted-tg"
tg_port = 80
tg_protocol = "HTTP"
tg_target_type = "instance"
tg_enabled_target_group = true
tg_healthy_threshold = 2
tg_unhealthy_threshold = 2
tg_timeout = 5
tg_internal = 30
tg_path = "/"
tg_matcher = "200"
tg_tags = { Project = "AdaptEd" }

listener_port = 80
listener_protocol = "HTTP"
listener_ssl_policy = ""
listener_certificate_arn = ""
listener_type = "forward"

ssh_key_name = "lukky.pem"
public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAI3hGSXPAvcFGpItOpX5vfhTTwAh0AOE6pncWYGUvMREZLakshit adapted"

database_cluster_identifier = "lukky-db-cluster"
database_cluster_engine = "aurora"
database_cluster_engine_version = "5.7.mysql_aurora.2.07.1"
database_cluster_availability_zones = ["us-east-1a", "us-east-1b"]
database_name = "db_lukky"
database_cluster_master_username = "Lakshit"
database_cluster_master_password = "123456"
database_cluster_backup_retention_period = 7
database_cluster_preferred_backup_window = "07:00-09:00"
database_instance_count = 1
database_instance_identifier = "lukky-db-instance"
database_instance_instance_class = "db.t3.medium"


security_group_name = "security-group"
security_group_tags = { Name = "security-group" }
tls_ipv4_from_port = 0
tls_ipv4_ip_protocol = "tcp"
tls_ipv4_to_port = 65535
traffic_ipv4_cidr_block = "0.0.0.0/0"
traffic_ipv4_ip_protocol = "tcp"
traffic_ipv6_cidr_block = "::/0"
traffic_ipv6_ip_protocol = "tcp"