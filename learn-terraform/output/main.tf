output "sample" {
  value = "Hello world"
}

output "sample1" {
  value = "welcome home"
}

resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name: "test"
  }
}

output "security_id" {
  value = "vpc_security_group_ids"
}
