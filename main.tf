resource "aws_instance" "cm" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  subnet_id= var.subnet_id__value
  tags = {
    Name = "AWS-Jenkins-Server"
    Created_by ="Chintha"
  }
}
