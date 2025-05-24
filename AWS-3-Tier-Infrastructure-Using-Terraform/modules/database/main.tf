resource "aws_rds_cluster" "database" {
  cluster_identifier = var.database_cluster_identifier
  engine = var.database_cluster_engine
  engine_version = var.database_cluster_engine_version
  availability_zones = var.database_cluster_availability_zones
  database_name = var.database_name
  master_username = var.database_cluster_master_username
  master_password = var.database_cluster_master_password
  backup_retention_period = var.database_cluster_backup_retention_period
  preferred_backup_window = var.database_cluster_preferred_backup_window
}

resource "aws_rds_cluster_instance" "database_instance" {
  count = var.database_instance_count
  identifier = var.database_instance_identifier
  cluster_identifier = aws_rds_cluster.database.id
  instance_class = var.database_instance_instance_class
  engine = aws_rds_cluster.database.engine
  engine_version = aws_rds_cluster.database.engine_version
}