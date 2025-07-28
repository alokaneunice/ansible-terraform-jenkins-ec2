
resource "aws_instance" "ansible-controller" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.pub_sub_1.id
  vpc_security_group_ids      = [aws_security_group.alb_sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("ansible.sh")
  tags = {
    Name = "${var.env_prefix}-ansible-controller"
  }
}


resource "aws_instance" "remote-server" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.pub_sub_2.id
  vpc_security_group_ids      = [aws_security_group.alb_sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  tags = {
    Name = "${var.env_prefix}-remote-server"
  }
}