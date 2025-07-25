
resource "aws_instance" "ansible-controller" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.myapp-subnet.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("install-jenkins.yml")
  tags = {
    Name = "${var.env_prefix}-ansible-controller"
  }
}


resource "aws_instance" "remote-server" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.myapp-subnet.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("install-jenkins.yml")
  tags = {
    Name = "${var.env_prefix}-remote-server"
  }
}