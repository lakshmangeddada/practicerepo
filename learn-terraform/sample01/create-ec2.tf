resource "aws_instance" "ec2" {
  ami = ["ami-0a017d8ceb274537d"]
  instance_type = ["t3.micro"]
  security_groups = ["sg-0615d2d6b16a84caa"]
  tags = {
    name = test
  }
}