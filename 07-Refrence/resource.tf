resource "aws_instance" "web" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami
  availability_zone = var.zones[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = var.ec2_instance_name
  }
}

resource "aws_eip" "lb" {
  vpc = true 
}

resource "aws_eip_association" "assoc_eip" { 
  instance_id = aws_instance.web[0].id
  allocation_id = aws_eip.lb.id
}