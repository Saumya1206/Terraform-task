resource "aws_key_pair" "main" {
  key_name_prefix = var.key_name
  public_key      = var.public_key

  tags = {
    Name = var.key_name
  }
}
