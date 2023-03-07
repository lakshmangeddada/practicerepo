data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}


resource "aws_instance" "frontend" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "frontend-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "catalogue" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "catalogue-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "cart" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "cart-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "user" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "user-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "mongodb" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "mongodb-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}



resource "aws_instance" "shipping" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "shipping"
  }
}


resource "aws_route53_record" "shipping" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "shipping-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}



resource "aws_instance" "payment" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "payment-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "redis" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "redis"
  }
}


resource "aws_route53_record" "redis" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "redis-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "rabbitmq-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "mysql" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "mysql-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}