# KV - Creates a KV Secrets Engine at a mount point


resource "vault_mount" "secrets-kv2" {
  path        = "secrets-kv2"
  type        = "kv-v2"
  description = "This is an example KV Version 2 secret engine mount"

  default_lease_ttl_seconds = 3600
  max_lease_ttl_seconds     = 86400
}