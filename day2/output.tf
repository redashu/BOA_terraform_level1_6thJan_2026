output "ashu-vm-publicIP" {
  value = aws_instance.example.public_ip
}

output "ashu-vm-id" {
  value = aws_instance.example.id
}