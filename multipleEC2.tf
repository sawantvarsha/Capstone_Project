resource "aws_instance" "server" {
  count = 3 # create four similar EC2 instances

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
     "Name" = "${element(var.name_prefixes, count.index + 1)}"  }
}


#code in variable.tf for names of ec2
variable "name_prefixes" {
  type    = list(string)
  default = ["Jenkins", "Bastion", "Web_Server"]
}
