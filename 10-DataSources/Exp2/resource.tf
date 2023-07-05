resource "aws_instance" "web-east" {
  count = 2
  ami           = data.aws_ami.myami_east.id 
  instance_type = "t2.micro"
  availability_zone = data.aws_availability_zones.zones_east.names[count.index]

 tags = {
   Name = "Provider-Exp4"
 }
}


resource "aws_instance" "web-west" {
  count = 2
  provider      = aws.myprovider2
  ami           = data.aws_ami.myami_west.id 
  instance_type = "t2.micro"
  availability_zone = data.aws_availability_zones.zones_west.names[count.index]

 tags = {
   Name = "Provider-Exp4"
 }
}
