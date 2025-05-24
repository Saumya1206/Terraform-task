resource "aws_instance" "ec2" {
    count = var.count
    ami = var.ami_value
    instance_type = var.type 
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids  
    key_name = var.key_name
    associate_public_ip_address = var.associate_public_ip_address

    root_block_device {
      volume_size = var.volume_size
      volume_type = var.volume_type
      delete_on_termination = var.delete_on_termination
    }

    tags = {
      Name = "ec2_${var.name}_${count.index+1}"
      Environment = "${var.Environment}"
      Role = "${var.Role}"
      Owner = "${var.Owner}"
      Project = "${var.Project}"
    }
}

