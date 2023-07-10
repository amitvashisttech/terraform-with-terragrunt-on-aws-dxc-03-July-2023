data "aws_ami" "myami" {
  most_recent = true
  owners      = ["656981272212"]

  filter {
    name   = "name"
    values = ["apache-ami-packer-*"]
  }
}
