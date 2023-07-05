resource "aws_instance" "web-east" {
  count             = local.az_east_count
  ami               = data.aws_ami.myami_east.id
  instance_type     = var.ec2_instance_type
  availability_zone = data.aws_availability_zones.zones_east.names[count.index]

  tags = {
    Name = local.frontend_east
  }
}


resource "aws_instance" "web-west" {
  count             = local.az_west_count
  provider          = aws.myprovider2
  ami               = data.aws_ami.myami_west.id
  instance_type     = var.ec2_instance_type
  availability_zone = data.aws_availability_zones.zones_west.names[count.index]

  tags = {
    Name = local.frontend_west
  }
}
