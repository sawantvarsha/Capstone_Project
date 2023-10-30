resource "aws_instance" "ec2-web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  #availability_zone = "us-east-2"
  key_name = "tf-key-pair" #key created already in keypair.tf file

  tags = {
    Name = "first-ec2-server"
  }
}
