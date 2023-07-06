resource "aws_instance" "web" {
  // Old Way
  #count             = var.ec2_instance_count
  #instance_type     = var.ec2_instance_type
  // New Way
  count         = lookup(var.ec2_instance_count, terraform.workspace)
  instance_type = lookup(var.ec2_instance_type, terraform.workspace)
  ami           = data.aws_ami.myami.id

  root_block_device {
    volume_type = "gp2"
  }

  tags = {
    Name = local.frontend_east
  }

  lifecycle {
    create_before_destroy = true
  }
}

