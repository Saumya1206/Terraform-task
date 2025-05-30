module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  tags = var.tags
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags = var.tags
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
  tags = var.tags
}

module "nat_gateway" {
  source = "./modules/nat_gateway"
  public_subnet_ids = module.subnet.public_subnet_ids
  tags = var.tags
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id
  igw_id = module.igw.igw_id
  nat_gateway_ids = module.nat_gateway.nat_gateway_ids
  public_subnet_ids = module.subnet.public_subnet_ids
  private_subnet_ids = module.subnet.private_subnet_ids
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "key_pair" {
  source = "./modules/key_pair"
  key_name = var.key_name
  public_key = file(var.public_key_path)
  tags = var.tags
}

module "launch_template" {
  source = "./modules/launch_template"
  name = "launch-template"
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = module.key_pair.key_name
  security_group_ids = [module.security_group.ec2_security_group_id]
  user_data = var.user_data
  tags = var.tags
  instance_profile_name = var.instance_profile_name
}

module "asg" {
  source = "./modules/asg"
  name = "asg"
  launch_template_id = module.launch_template.launch_template_id
  launch_template_version = module.launch_template.launch_template_latest_version
  subnet_ids = module.subnet.public_subnet_ids
  target_group_arns = [module.alb.example_target_group_arn]
  desired_capacity = var.desired_capacity
  max_size = var.max_size
  min_size = var.min_size
  tags = var.tags
}

module "alb" {
  source = "./modules/alb"
  vpc_id = module.vpc.vpc_id
  public_subnet_ids = module.subnet.public_subnet_ids
  private_subnet_ids = module.subnet.private_subnet_ids
  alb_security_group_id = module.security_group.alb_security_group_id
  tags = var.tags
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_ids = [module.subnet.public_subnet_ids[0]]
  key_name = module.key_pair.key_name
  security_group_ids = [module.security_group.ec2_security_group_id]
  name = var.ec2_name
  tags = var.tags
}

module "rds" {
  source = "./modules/rds"
  identifier = var.db_name
  subnet_ids = module.subnet.private_subnet_ids
  parameter_group_family = "mysql5.7"
  db_parameters = []
  engine = var.db_engine
  engine_version = "5.7"
  instance_class = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  database_name = var.db_name
  username = var.db_username
  password = var.db_password
  port = 3306
  security_group_id = module.security_group.rds_security_group_id
  backup_retention_period = 7
  backup_window = "03:00-04:00"
  maintenance_window = "Mon:04:00-Mon:05:00"
  multi_az = false
  publicly_accessible = false
  skip_final_snapshot = false
  tags = var.tags
}
