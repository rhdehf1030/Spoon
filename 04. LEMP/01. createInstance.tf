data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}

resource "aws_instance" "webapp1" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = "Spoon"
  vpc_security_group_ids      = [var.webSecurityGroup.id]
  subnet_id                   = var.web_2a.id
  user_data                   = file("${path.module}/settings/installpkgs1.sh")
}

resource "aws_instance" "webapp2" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = "Spoon"
  subnet_id                   = var.web_2c.id
  vpc_security_group_ids      = [var.webSecurityGroup.id]
  user_data                   = file("${path.module}/settings/installpkgs2.sh")
}
