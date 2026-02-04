resource "aws_lb" "alb_lior" {
  name               = "alb-lior" 
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg.id]
  subnets            = aws_subnet.Public-Subnet[*].id
}