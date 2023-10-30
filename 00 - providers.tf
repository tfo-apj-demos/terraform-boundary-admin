terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "~> 0"
    }
    boundary = {
      source = "hashicorp/boundary"
			version = "~> 1"
    }
  }
}

provider "boundary" {
  addr = "https://e0078f32-6a05-44fe-a147-158f9d15a5fb.boundary.hashicorp.cloud"
}

provider "tfe" {
  organization = "tfo-apj-demo"
}