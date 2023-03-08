variable "ec2_create" {}

resource "aws_instance" "test" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.ec2_create == "" ? "t3.micro" : var.ec2_create
}

variable "instances" {}

resource "aws_instance" "test" {
  count = var.instances == "true" ? 1 : 0
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.ec2_create == "" ? "t3.micro" : var.ec2_create
}
#----------------------

resource "aws_instance" "test" {
  count = tobool(var.instances) ? 1 : 0
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.ec2_create == "" ? "t3.micro" : var.ec2_create
}