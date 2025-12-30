output "public-ip-address" {
  value = aws_instance.cm.public_ip
}

output "private-ip-address" {
  value = aws_instance.cm.private_ip
}

output "instance_id" {
  value = aws_instance.cm.id
}
