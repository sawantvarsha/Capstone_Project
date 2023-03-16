resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.elasticip.id
  subnet_id     = aws_subnet.my-public-201-a.id

  tags = {
    Name = "nat-gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw-course-project]
}
