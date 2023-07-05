
# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "myami" { 
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}

resource "aws_instance" "web" {
  ami = data.aws_ami.myami.id 
  instance_type = "t2.micro"

 tags = {
   Name = "HelloWorld-TF"
 }
}

output myami {
  value       = data.aws_ami.myami
}

