# data "tfe_outputs" "vault_admin" {
#   organization = "tfo-apj-demos"
#   workspace    = "vault-admin"
# }

# resource "vault_terraform_cloud_secret_creds" "this" {
#   backend = "terraform"
#   role    = "boundary_admins"
# }