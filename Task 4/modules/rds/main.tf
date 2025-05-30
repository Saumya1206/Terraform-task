resource "aws_db_subnet_group" "main" {
  name       = "${var.identifier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = merge(
    {
      Name = "${var.identifier}-subnet-group"
    },
    var.tags
  )
}

resource "aws_db_parameter_group" "main" {
  name   = "${var.identifier}-param-group"
  family = var.parameter_group_family

  dynamic "parameter" {
    for_each = var.db_parameters
    content {
      name         = parameter.value.name
      value        = parameter.value.value
      apply_method = lookup(parameter.value, "apply_method", null)
    }
  }

  tags = merge(
    {
      Name = "${var.identifier}-param-group"
    },
    var.tags
  )
}

resource "aws_db_instance" "main" {
  identifier           = var.identifier
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  storage_encrypted    = var.storage_encrypted

  db_name              = var.database_name
  username             = var.username
  password             = var.password
  port                 = var.port

  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.main.name
  parameter_group_name   = aws_db_parameter_group.main.name

  backup_retention_period = var.backup_retention_period
  backup_window           = var.backup_window
  maintenance_window      = var.maintenance_window

  multi_az               = var.multi_az
  publicly_accessible    = var.publicly_accessible

  tags = merge(
    {
      Name = var.identifier
    },
    var.tags
  )
}
