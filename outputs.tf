output "ansible_controller_ip" {
  value = aws_instance.ansible_controller.public_ip
}

output "remote_server_ip" {
  value = aws_instance.remote_server.public_ip
}