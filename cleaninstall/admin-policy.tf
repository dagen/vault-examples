# This will create a new policy for the 'vault-admin' role.  Note this is essentially a super-user in Vault

resource "vault_policy" "vault-policy-admin" {
  name = "vault-admin"

  policy = <<EOT
path "*" {
  capabilities = ["create","read","update","delete","list","sudo","patch"]
}
EOT
}