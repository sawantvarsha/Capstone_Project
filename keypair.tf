Creates a PEM (and OpenSSH) formatted private key
resource "aws_key_pair" "tf-key-pair" { 
key_name = "tf-key-pair"
public_key = tls_private_key.rsa.public_key_openssh
}
#Creates a PEM (and OpenSSH) formatted private key
resource "tls_private_key" "rsa" {
algorithm = "RSA"
rsa_bits  = 4096
}
#create local file
resource "local_file" "tf-key" { 
content  = tls_private_key.rsa.private_key_pem
filename = "tf-key-pair"
}
