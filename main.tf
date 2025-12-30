resource "aws_instance" "cm" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
}
