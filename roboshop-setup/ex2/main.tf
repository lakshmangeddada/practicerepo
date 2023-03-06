data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count = length(var.instances)
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
}

variable "instances" {
  default = [ "cart", "catalogue", "user", "redis", "mongodb" ]
}

output "public_ips" {
  value = aws_instance.frontend.*.public_ip
}