resource "aws_instance" "front" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  availability_zone = var.zones[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = local.frontend_name
  }
}

resource "aws_instance" "back" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  availability_zone = var.zones[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = local.backend_tags
}
