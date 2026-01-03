provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "cm" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "m7i-flex.large"
  user_data     = file("jenkins.sh")
  tags = {
    Name       = "AWS-Jenkins-Server"
    Created_by = "Chintha"
    Owner      = "Oracle"
  }
}
