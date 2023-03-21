resource "aws_instance" "ec2" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name = "test"
  }
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "echo Hello world"
    ]
  }
}
