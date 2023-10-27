resource "aws_lb_target_group" "target-group" {
  name        =  "terraform-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = aws_vpc.course-project.id

  health_check {
    enabled             = true
    interval            = 10
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}
# creating ALB MENTION 2 AVAIBILITY ZONES for subnet
resource "aws_lb" "application-lb" {
  name               = "terraform-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.my-public-201-a.id, aws_subnet.my-public-201-b.id]
  security_groups    = [aws_security_group.allow_tls.id]
  ip_address_type    = "ipv4"

  tags = {
    name = "terraform-alb"
  }
}
