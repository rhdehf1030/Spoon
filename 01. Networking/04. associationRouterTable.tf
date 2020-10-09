# DMZ route table association
resource "aws_route_table_association" "dmz_2a" {
  subnet_id      = aws_subnet.dmz_2a.id
  route_table_id = aws_route_table.dmz_main.id
}

resource "aws_route_table_association" "dmz_2c" {
  subnet_id      = aws_subnet.dmz_2c.id
  route_table_id = aws_route_table.dmz_main.id
}

# Web route table association
resource "aws_route_table_association" "web_2a" {
  subnet_id      = aws_subnet.web_2a.id
  route_table_id = aws_route_table.web_main_2a.id
}

resource "aws_route_table_association" "web_2c" {
  subnet_id      = aws_subnet.web_2c.id
  route_table_id = aws_route_table.web_main_2a.id
}
