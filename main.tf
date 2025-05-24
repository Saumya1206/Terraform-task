resource "aws_instance" "myec2" {
  ami                         = var.ami_id      # copy an ami from the AWS console
  instance_type               = var.instance_type                  # enter instance type
  subnet_id                   = var.subnet_id   #copy subnet id from the AWS console
  associate_public_ip_address = false                         # set to true if you want to assign a public IP address

  root_block_device {
    volume_size = var.ebs_volume_size   #EBS volume
  }

  tags = {
    Name = "NewInstance"    # Name for the instance
  }
}
