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

provider "boundary" {}
provider "tfe" {}