output "instance_type" {
  value = "${var.instance_type}"
}

variable "instance_type" {
  default = "t3.micro"
}


resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "test"
  }
}

