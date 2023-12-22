resource "aws_instance" "frontend" {
  ami=""
  instance_type = ""
  vpc_security_group_ids = [""]
  tags = {
    name="frontend"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "www.example.com"
  type    = "A"
  ttl = "300"
  zone_id = ""
  records = [aws_instance.frontend.public_ip]
}

resource "aws_instance" "backend" {
  ami=""
  instance_type=""
  vpc_security_group_ids = [""]
  tags = {
    name="backend"
  }
}

resource "aws_instance" "mysql" {
  ami=""
  instance_type=""
  vpc_security_group_ids = [""]
  tags ={
    name="mysql"
  }
}