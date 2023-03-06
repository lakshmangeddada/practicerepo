variable "security_groups" {
  default = [ "sg-0615d2d6b16a84caa" ]
}

resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = "${var.security_groups}"
  tags = {
    Name: "test"
  }
}

