provider "aws" {
  region = "ca-central-1"
}

resource "aws_instance" "web-server" {
  ami = "ami-0db72f413fc1ddb2a"
  instance_type = "t3.micro"
  key_name = "terraform-lab"
  vpc_security_group_ids = ["sg-1a1a1a1a1a1a1a1a1"]
  subnet_id = "subnet-1a1a1a1a"

  tags = {
    Name = "web-server"
    Role = "terraform-lab"
  }
}


