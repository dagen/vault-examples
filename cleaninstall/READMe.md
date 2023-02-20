# New install

This folder contains scripts for a fresh (clean) install.  We assume the following

- You have a running Vault server
- You have access to the 'root' token.

We will use the root token to manage a few basic things to get started. We do NOT recommend using the root token for everyday activities.  We also assume a local terraform state file as this should ONLY be used for local development.

## What will happen
- We will create the userpass authentication method, but we will NOT create a user.  
- We will create a new policy called 'vault-admin' which


## Things to do AFTER apply
- Create a user/password in the userpass auth method.
- Ensure this user gets the 'vault-admin' policy applied to their tokens.
