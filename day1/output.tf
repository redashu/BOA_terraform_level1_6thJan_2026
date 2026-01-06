
output "hello" {
  value = "Hello world from terraform"
}

output "hello1" {
  value = "Hello world from terraform by ashutoshh"

}

output "ashu-vm-publicIP" {
  value = aws_instance.example.public_ip
}

output "ashu-privatip" {
  value = aws_instance.example.private_ip
  
}