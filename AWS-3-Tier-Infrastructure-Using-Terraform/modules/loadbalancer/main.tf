resource "aws_lb" "loadbalancer" {
  name = var.lb_name
  internal = var.lb_internal
  load_balancer_type = var.lb_type
  security_groups = [ aws_security_group.lb_security_group.id ]
  subnets = var.lb_subnet_ids
  enable_deletion_protection = var.lb_enable_deletion_protection
  access_logs {
    bucket = aws_s3_bucket.lb_logs.id
    prefix = var.lb_prefix
    enabled = var.lb_enabled
  }
  tags = var.lb_tags
}

resource "aws_lb_target_group" "load_balancer_target_group_instance" {
  name = var.tg_name
  port = var.tg_port
  protocol = var.tg_protocol
  vpc_id = aws_vpc.vpc_id.id
  target_type = var.tg_target_type
  health_check {
    enabled = var.tg_enabled_target_group
    healthy_threshold = var.tg_healthy_threshold
    unhealthy_threshold = var.tg_unhealthy_threshold
    timeout = var.tg_timeout
    interval = var.tg_internal
    path = var.tg_path
    matcher = var.tg_matcher
  }
  tags = var.tg_tags
}


resource "aws_lb_listener" "load_balancer_listeners" {
  load_balancer_arn = aws_lb.loadbalancer.arn
  port = var.listener_port
  protocol = var.listener_protocol
  ssl_policy = var.listener_ssl_policy
  certificate_arn = var.listener_certificate_arn
  default_action {
    type = var.listener_type
  }
}