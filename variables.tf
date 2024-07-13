variable "key_name" {
  description = "The name for the SSH key pair"
  type        = string
  default     = "MyAWSKey2"
}

variable "private_key_filename" {
  description = "The filename for the private key"
  type        = string
  default     = "MyAWSKey2.pem"
}
