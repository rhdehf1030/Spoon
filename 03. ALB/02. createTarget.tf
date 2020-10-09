resource "aws_lb_target_group" "webapp1" {
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.spoon.id
}

resource "aws_lb_target_group_attachment" "webapp1" {
  target_group_arn = aws_lb_target_group.webapp1.arn
  target_id        = var.webapp1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "webapp2" {
  target_group_arn = aws_lb_target_group.webapp1.arn
  target_id        = var.webapp2.id
  port             = 80
}