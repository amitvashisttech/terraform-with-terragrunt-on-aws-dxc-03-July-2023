resource "aws_instance" "web-east" {
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"

 tags = {
   Name = "Provider-Exp4"
 }
}


resource "aws_instance" "web-west" {
  provider      = aws.myprovider2
  ami           = "ami-02d8bad0a1da4b6fd"
  instance_type = "t2.micro"

 tags = {
   Name = "Provider-Exp4"
 }
}
