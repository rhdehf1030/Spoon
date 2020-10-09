resource "aws_security_group" "dmz" {
  vpc_id      = var.spoon.id
}

resource "aws_security_group" "web" {
  vpc_id      = var.spoon.id
}
