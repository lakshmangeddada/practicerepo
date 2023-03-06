variable "sample" {
  default = "welcome"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}
//------------------------

/*
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

output "instance_type" {
  value = "${var.instance_type}"
}*/

