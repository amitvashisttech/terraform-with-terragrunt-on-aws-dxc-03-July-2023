# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "web" {
  count         = 1
  # Amazon Linux Image ID. 
  #  ami           = "ami-03f38e546e3dc59e1"

  # Ubuntu Linux Image ID. 
   ami         = "ami-024e6efaf93d85776"
  
  instance_type = "t2.micro"
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }

  lifecycle { 
    create_before_destroy = "true"
  }

}
