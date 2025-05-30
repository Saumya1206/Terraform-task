aws_region = "eu-north-1"

vpc_cidr = "10.0.0.0/16"
availability_zones = ["eu-north-1a", "eu-north-1b"]

public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

nat_eip_allocation_id = "eipalloc-abc12345"

ami_id = "ami-0c1ac8a41498c1a9c"
instance_type = "t3.micro"
key_name = "my-key"
public_key_path = "~/.ssh/id_rsa.pub"

desired_capacity = 2
max_size = 3
min_size = 1

db_username = "admin"
db_password = "SuperSecurePass123"
db_instance_class = "db.t3.micro"
db_name = "mydb"
db_engine = "mysql"
db_allocated_storage = 20

alb_listener_port = 80
alb_target_port = 8080

ec2_name = "my-instance"

tags = {
  Environment = "Dev"
  Project     = "ModularTerraform"
  Owner       = "YourName"
}
