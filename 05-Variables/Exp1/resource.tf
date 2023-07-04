variable "zones" {
  type        = list(any)
  default     = ["us-east-2a", "us-east-2b"]
  description = "Zone Variable for Ec2 Instance"
}



resource "aws_instance" "web" {
  count   = 2 
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"
  availability_zone = var.zones[count.index]

 tags = {
   Name = "HelloWorld-TF"
 }
}


