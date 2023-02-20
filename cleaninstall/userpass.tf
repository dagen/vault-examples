# USERPASS 

# We will be using the 'root' token to enable the 'userpass' auth method in Vault

resource "vault_auth_backend" "userpass" {
  type        = "userpass"
  description = "Basic username/password key value authentication method.  Best used for local authentication."
  local       = true

  tune {
    max_lease_ttl      = "24h"
    listing_visibility = "unauth"
  }
}