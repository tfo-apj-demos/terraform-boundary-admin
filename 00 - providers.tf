terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0"
    }
    boundary = {
      source  = "hashicorp/boundary"
      version = "~> 1"
    }
  }
}

provider "boundary" {
  addr                   = var.boundary_addr
  auth_method_login_name = var.boundary_username
  auth_method_password   = var.boundary_password
  auth_method_id         = var.boundary_auth_method_id
}

# provider "tfe" {
#   organization = "tfo-apj-demo"
#   token = auth_login_token_file {
#     filename = var.tfc_vault_dynamic_credentials.default.token_filename
#   }
# }

