output "private_key_pem" {
  value = tls_private_key.generated.private_key_pem
  sensitive = true
}

output "public_key_openssh" {
  value = tls_private_key.generated.public_key_openssh
}

output "key_name" {
  value = aws_key_pair.generated.key_name
}
