resource "aws_instance""sample"{
  ami = "ami-03265a0778a880afb"
  instance_type= "t2.micro"
  vpc_security_group_ids = ["vpc-06ad3ac329ee00967"]
  tags={
    Name="hellosp"
  }
}