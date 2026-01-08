resource "aws_instance" "example" {
  ami           = var.ashu-ami
  instance_type = var.vm-size
  count = var.novm
  # attaching security group to ec2 vm 
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]

  tags = {
    Name = "${var.vm-name}-${count.index}"
  }
}
