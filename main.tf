provider "aws" {
  region = "us-east-1"
}
data "aws_security_group" "existing_sg" {
  filter {
    name   = "group-name"
    values = ["chintha-sg"]
  }
}
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web_server" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.existing_sg.id]

  tags = {
    Name = "Sg-Instance"
  }
}
