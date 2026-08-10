resource "aws_instance" "bastion" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.bastion.id]
  tags = {
    Name = "cloud-devops-lab-bastion"
    Role = "bastion"
  }
}

resource "aws_instance" "app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.app.id]
  tags = {
    Name = "cloud-devops-lab-app"
    Role = "application"
  }
}