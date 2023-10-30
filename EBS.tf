resource "aws_ebs_volume" "ebs_vlm" {
  availability_zone = "us-east-1a"  # Specify the availability zone where the volume will be created
  size             = 1             # Size of the EBS volume in gigabytes
  type             = "gp2"          # EBS volume type, e.g., "gp2" for General Purpose SSD
  tags = {
    Name = "ebs-volume"    # Optional tags for the EBS volume
  }
}
