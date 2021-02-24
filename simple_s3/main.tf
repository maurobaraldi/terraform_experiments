terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "blokus"

    workspaces {
      prefix = "blokus-"
    }
  }
}

locals {
  tags = {
    Terraform   = "true"
    Environment = var.workspace
  }

  env = var.env_vars[var.workspace]
}

provider "aws" {
  version = "~> 3.14.1"
  region  = "us-east-1"
  profile = "vindi-${var.workspace}"
}
