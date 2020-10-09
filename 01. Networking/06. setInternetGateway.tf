resource "aws_route" "dmz_public" {
  route_table_id         = aws_route_table.dmz_main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ig.id
}
