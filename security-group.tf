data "aws_vpc" "vpc" {
    id = var.vpc
}

resource "aws_security_group" "allow_http_https" {
    name        = "allow http and https"
    description = "Allow port 80 for http and port 443 for https"
    vpc_id      = data.aws_vpc.vpc.id

    ingress {
    description      = "allow HTTP inbound"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks=["0.0.0.0/0"]
    }
    
    ingress {
    description      = "allow HTTPS inbound"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks=["0.0.0.0/0"]
    }

    tags = {
        Name = "allow-http-s-${var.author}"
    }
}