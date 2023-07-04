# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "web" {
  count         = 3
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}
