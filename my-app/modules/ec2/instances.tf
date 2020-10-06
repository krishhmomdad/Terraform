resource "aws_instance" "web" {
  count=var.ec2_count
  ami           = var.ec2_ami
  instance_type = var.instatype
  subnet_id=var.subnet_id
  tags = {
    Name = "myinstance"
  }
}