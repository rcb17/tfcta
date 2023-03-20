## Create instance - will use defaults for parameters not specified (e.g. VPC, security group)
resource "aws_instance" "server1" {
  ami           = var.my_ami
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.sec_web1.id]

  tags = {
    Name = "vm_lab1"
  }
}

resource "aws_instance" "server2" {
  ami           = var.my_ami
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.sec_web2.id]

  tags = {
    Name = "vm_lab2"
  }
}