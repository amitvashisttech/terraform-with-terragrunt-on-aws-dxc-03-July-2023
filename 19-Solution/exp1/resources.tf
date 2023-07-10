resource "aws_instance" "east_frontend" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami_east
  availability_zone = var.zones_east[count.index]
  instance_type     = var.ec2_instance_type
  depends_on        = [ aws_instance.east_backend] 
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "${var.ec2_instance_front_east_name}-${count.index}"
  }

  lifecycle { 
    create_before_destroy = true
  }
}

resource "aws_instance" "east_backend" {
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami_east
  availability_zone = var.zones_east[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "${var.ec2_instance_back_east_name}-${count.index}"
  }
  lifecycle { 
    prevent_destroy = true
  }
}


# Using the Alias Provider Block


resource "aws_instance" "west_frontend" {
  provider          = aws.us-west-1
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami_west
  availability_zone = var.zones_west[count.index]
  instance_type     = var.ec2_instance_type
  depends_on        = [ aws_instance.west_backend] 
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "${var.ec2_instance_front_west_name}-${count.index}"
  }

  lifecycle { 
    create_before_destroy = true
  }
}

resource "aws_instance" "west_backend" {
  provider          = aws.us-west-1
  count             = var.ec2_instance_count
  ami               = var.ec2_instance_ami_west
  availability_zone = var.zones_west[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "${var.ec2_instance_back_west_name}-${count.index}"
  }
  lifecycle { 
    prevent_destroy = true
  }
}


