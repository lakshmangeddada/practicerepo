output "security_group_id" {
  value = "${var.security_groups}"
}

variable "security_groups" {
  default = [ "sg-0615d2d6b16a84caa" ]
  default1 = "t3.micro"
}


resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "${var.security_groups}"
  vpc_security_group_ids = "${var.security_groups}"
  tags = {
    Name: "test"
  }
}

