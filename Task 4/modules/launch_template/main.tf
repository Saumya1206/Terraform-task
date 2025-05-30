resource "aws_launch_template" "main" {
  name_prefix   = "${var.name}-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  network_interfaces {
    associate_public_ip_address = var.associate_public_ip
    security_groups            = var.security_group_ids
  }

  iam_instance_profile {
    name = var.instance_profile_name
  }

  user_data = base64encode(var.user_data)

  key_name = var.key_name

  monitoring {
    enabled = true
  }

  tag_specifications {
    resource_type = "instance"
    tags = merge(
      {
        Name = var.name
      },
      var.tags
    )
  }

  lifecycle {
    create_before_destroy = true
  }
}
