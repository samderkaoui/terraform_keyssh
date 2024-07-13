resource "tls_private_key" "generated" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key_pem" {
  content         = tls_private_key.generated.private_key_pem
  filename        = var.private_key_filename
  file_permission = "0600"
}

resource "aws_key_pair" "generated" {
  key_name   = var.key_name
  public_key = tls_private_key.generated.public_key_openssh

  lifecycle {
    ignore_changes = [key_name]
  }
}
