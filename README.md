# vault-examples

## Overview
This repository will contain Terraform code used to manage a Vault instance, or a namespace within an instance.

## Requirements
- A running HashCorp Vault server (or cluster), version 1.12+
- A token with administrative capabilities for the Vault server (or cluster)
- Terraform 1.3.x

## Contents
### ./cleaninstall
This folder is used after a new (clean) install of Vault. The intent here is the use the most minimal terraform necessary to get our environment into a more automatable state.

This folder contains the Terraform code to complete 2 initial tasks:

1. Create an 'vault-admin' policy that will allow us to create a non-root user with vault admin permissions.
2. Create a 'userpass' authentication engine in which we'll begin creating our initial users.

Once these are done, the remaining content of this repository will use a token from one of these non-root users to complete their tasks.  You can, of course, choose to use the root token, but it is not advised.

### ./examples
The 'examples' folder will contain additional Terraform to perform other tasks such as: setting up secrets engines, auth methods, approles, and other feature of Vault.  The code here may use both standalone Terraform or may reference Terraform modules (see below).
### ./modules
The 'modules' folder will be a collection of Terraform modules. Essentially, this is a more reusable form of the 'standalone' code and is really an excercise for me to learn how to write Terraformmodules.

## Planned Work

### Secrets Engines
#### KV

#### Transit

#### Database

#### PKI

### Auth Methods
