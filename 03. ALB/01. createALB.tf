resource "aws_lb" "webALB" {
  internal        = false
  security_groups = [var.webSecurityGroup.id]
  subnets = [var.dmz_2a.id, var.dmz_2c.id]
}
