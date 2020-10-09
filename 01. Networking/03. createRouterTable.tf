resource "aws_route_table" "dmz_main" {
  vpc_id = aws_vpc.spoon.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

resource "aws_route_table" "web_main_2a" {
  vpc_id = aws_vpc.spoon.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.web_2a.id
  }
}
