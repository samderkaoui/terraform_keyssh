# terraform_keyssh
Module CLE SSH

```
module "terraform_keyssh" {
  source = "github.com/Kaiser016X/terraform_keyssh"

  key_name             = "MyCustomAWSKey2"      # Optional, override if needed
  private_key_filename = "MyCustomAWSKey2.pem"  # Optional, override if needed

}

#KEY SSH

output "private_key_pem" {
  value = module.terraform_keyssh.private_key_pem
  sensitive = true
}

output "public_key_openssh" {
  value = module.terraform_keyssh.public_key_openssh
}

output "key_name" {
  value = module.terraform_keyssh.key_name
}

```
