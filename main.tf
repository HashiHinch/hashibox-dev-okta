terraform {
  cloud {
    organization = "craigs-lab"

    workspaces {
      name = "hashihinch-okta"
    }
  }
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "3.38.0"
    }
  }
}

provider "okta" {
  org_name  = var.org_name
  base_url  = var.base_url
  api_token = var.api_token
}
