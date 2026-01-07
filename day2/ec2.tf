resource "aws_instance" "example" {
  ami           = var.ashu-ami
  instance_type = var.vm-size

  tags = {
    Name = var.vm-name
  }
}
