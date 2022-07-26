resource "aws_instance" "ansible_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.ansible_server.id]
  key_name = "talent_academy_lab"

  subnet_id = data.aws_subnet.public.id

  tags = {
    Name = "Ansible-Server"
  }
}

resource "aws_eip" "ansible_server_eip" {
  instance = aws_instance.ansible_server.id
  vpc      = true
}