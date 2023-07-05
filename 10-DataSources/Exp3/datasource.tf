data "aws_ami" "myami_east" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}

data "aws_availability_zones" "zones_east" {
  state = "available"
}

data "aws_ami" "myami_west" {
  provider    = aws.myprovider2
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}

data "aws_availability_zones" "zones_west" {
  state    = "available"
  provider = aws.myprovider2
}