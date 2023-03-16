resource "aws_subnet" "my-public-201-a" {
  vpc_id     = aws_vpc.course-project.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "my-public-201-a"
  }
}

resource "aws_subnet" "my-public-201-b" {
  vpc_id     = aws_vpc.course-project.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "my-public-201-b"
  }
}

resource "aws_subnet" "my-private-201-a" {
  vpc_id     = aws_vpc.course-project.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "my-private-201-a"
  }
}

resource "aws_subnet" "my-private-201-b" {
  vpc_id     = aws_vpc.course-project.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "my-private-201-b"
  }
}
