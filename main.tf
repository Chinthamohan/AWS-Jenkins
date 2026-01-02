resource "aws_instance" "cm" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  subnet_id_value=var.subnet_id_type_value
  tags = {
    Name = "AWS-Jenkins-Server"
    Created_by ="Chintha"
  }
}
