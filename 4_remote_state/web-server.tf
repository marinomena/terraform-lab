resource "aws_security_group" "https-access" {
  name        = "https-access"
  description = "Allow HTTPS inbound traffic"
  vpc_id      = local.vpc-id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "https-access"
    Role = "terraform-lab"
  }
}


resource "aws_instance" "web-server" {
  ami = "ami-0db72f413fc1ddb2a"
  instance_type = "t3.micro"
  key_name = "terraform-lab"
  vpc_security_group_ids = [aws_security_group.https-access.id]
  subnet_id = local.subnet_id

  tags = {
    Name = "web-server"
    Role = "terraform-lab"
  }
}


