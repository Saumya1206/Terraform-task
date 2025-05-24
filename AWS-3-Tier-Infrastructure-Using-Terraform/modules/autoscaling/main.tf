resource "aws_launch_template" "Launch_Template" {
    
    name_prefix = var.name_prefix

    vpc_security_group_ids = var.vpc_security_group_ids
    image_id = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name

    block_device_mappings {
      device_name = var.device_name
      ebs {
        volume_size = var.volume_size
        volume_type = var.volume_type
        delete_on_termination = var.delete_on_termination
      }
    }

   network_interfaces {
     associate_public_ip_address = var.associate_public_ip_address
   }

   tag_specifications {
     resource_type = var.resource_type
     tags = var.tags
   }

    
}

resource "aws_autoscaling_group" "autoscaling" {
  name = "${var.name}-autoscaling"
  desired_capacity = var.desired_capacity
  min_size = var.min_size
  max_size = var.max_size
  vpc_zone_identifier = var.vpc_zone_identifier
  health_check_type = var.health_check_type
  force_delete = var.force_delete
  launch_template {
    id = aws_launch_template.Launch_Template.id
    version = var.version
  }
  
  dynamic "tag" {
    for_each = var.tags
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = tag.propagate_at_launch
    }
  }

  lifecycle {
    create_before_destroy = var.create_before_destroy
  }
} 