# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  cloud {
    organization = "redirex-studio"
    workspaces {
      name = "redirex_workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.47.0"
      # shared_credentials_file = "/Users/suppo/.aws/credentials"
      # shared_credentials_files = ["C:/Users/suppo/.aws/credentials"]
      # profile                  = "default"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }
  }
  required_version = "~> 1.3"
}

