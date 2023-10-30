locals {
  issuer = data.tfe_outputs.vault_admin.values.oidc_issuer
  client_id = data.tfe_outputs.vault_admin.values.oidc_client_id
  client_secret = data.tfe_outputs.vault_admin.values.oidc_client_secret
}

resource "boundary_auth_method_oidc" "team_se" {
  scope_id = boundary_org.tfo_apj_demo.id
  issuer = local.issuer
  client_id = local.client_id
  client_secret = local.client_secret
  signing_algorithms = ["RS256"]
  api_url_prefix = "https://e0078f32-6a05-44fe-a147-158f9d15a5fb.boundary.hashicorp.cloud"
  claims_scopes = [
    "groups",
    "user"
  ]
  name = "vault"
  state = "inactive"
}

resource "boundary_managed_group" "team_se" {
  name           = "team_se"
  auth_method_id = boundary_auth_method_oidc.team_se.id
  filter         = "name == \"team_se\" or name == \"apac_se\""
}