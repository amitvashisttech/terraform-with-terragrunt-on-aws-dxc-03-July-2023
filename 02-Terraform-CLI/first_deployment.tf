# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  #access_key = "XXXXXX"
  #secret_key = "XXXXXXX"
}

// This is my AWS EC2 Provsion Block 
resource "aws_instance" "web" {
  count = 40 
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"
  tags = {
    Name = "AV-${count.index}"
  }
}


// This is my AWS EC2 Provsion Block 
resource "aws_instance" "db" {
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"
  tags = {
    Name = "DbApp"
  }
}


