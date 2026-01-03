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
resource "aws_ebs_volume" "jenkins" {
  availability_zone = "us-east-1c"
  size              = "44"

  tags = {
    Name = "jenkins"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.jenkins.id
  instance_id = aws_instance.cm.id
}
