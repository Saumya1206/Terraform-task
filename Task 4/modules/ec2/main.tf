resource "aws_instance" "main" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_ids[count.index % length(var.subnet_ids)]
  vpc_security_group_ids = var.security_group_ids
  key_name              = var.key_name
  iam_instance_profile  = var.instance_profile_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    encrypted   = true
  }

  user_data = var.user_data

  tags = merge(
    {
      Name = "${var.name}-${count.index + 1}"
    },
    var.tags
  )
}
