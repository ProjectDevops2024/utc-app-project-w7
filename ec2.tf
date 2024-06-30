resource "aws_instance" "server1" {
  ami           = "ami-0451a41634b0f548f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  security_groups = [aws_security_group.sg-demo.id]
  key_name      = aws_key_pair.aws_key.key_name
  user_data     = file("server.sh")
  tags = {
    Name = "utc-app-inst"
  }

}
