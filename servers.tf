resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "frontend.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
output "frontend" {

   value = aws_instance.frontend.public_ip

}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "redis.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
output "redis" {

   value = aws_instance.redis.public_ip

}
resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "mongodb.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
output "mongodb" {

   value = aws_instance.mongodb.public_ip

}
resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "catalogue.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
output "catalogue" {

   value = aws_instance.catalogue.public_ip

}
resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "cart.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
output "cart" {

   value = aws_instance.cart.public_ip

}
resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "user.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
output "user" {

   value = aws_instance.user.public_ip

}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "mysql.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
output "mysql" {

   value = aws_instance.mysql.public_ip

}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "shipping.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
output "shipping" {

   value = aws_instance.shipping.public_ip

}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "rabbitmq.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
output "rabbitmq" {

   value = aws_instance.rabbitmq.public_ip

}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "www" {
  zone_id = Z02149642661K5V8NCK02
  name    = "payment.kirandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
output "payment" {

   value = aws_instance.payment.public_ip

}
