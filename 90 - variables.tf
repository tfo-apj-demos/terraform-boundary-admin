variable "boundary_addr" {
  type = string
}

variable "boundary_username" {
  type = string
}

variable "boundary_auth_method_id" {
  type = string
}

variable "boundary_password" {
  type = string
}

variable "tfc_vault_dynamic_credentials" {
  description = "Object containing Vault dynamic credentials configuration"
  type = object({
    default = object({
      token_filename = string
      address = string
      namespace = string
      ca_cert_file = string
    })
    aliases = map(object({
      token_filename = string
      address = string
      namespace = string
      ca_cert_file = string
    }))
  })
}
