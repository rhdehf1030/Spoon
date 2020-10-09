resource "aws_eip" "web_nat1" {
  vpc = true
}

resource "aws_nat_gateway" "web_2a" {
  allocation_id = aws_eip.web_nat1.id
  subnet_id     = aws_subnet.dmz_2a.id
}