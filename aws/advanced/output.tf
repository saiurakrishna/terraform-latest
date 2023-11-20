output "instance_id" {
  value = aws_instance.appserver.id
}

output "public_ip" {
  value = aws_instance.appserver.public_ip
}

output "private_ip" {
  value = aws_instance.appserver.private_ip
}
