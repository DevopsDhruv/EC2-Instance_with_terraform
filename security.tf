# Dynamic inbound Security group
resource "aws_security_group" "Instance_security" {
  name        = var.Security_name
  description = "allow ssh and http"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port

    content {
      description = "allow ssh and http through terraform"
      from_port   = port.value
      to_port     = port.value
      protocol    = var.protocol
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  # outbout rule in security group
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # All traffic
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}