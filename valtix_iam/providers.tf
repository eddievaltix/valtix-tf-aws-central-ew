// Define both AWS and Valtix Terraform Resource Providers
terraform {
  required_providers {
    valtix = {
      source  = "valtix-security/valtix"
      version = "2.7.0"
    }
    aws = {
      version = "~> 3.35.0"
    }
  }
}

provider "aws" {
  //profile = ""
  region  = var.region
}

provider "valtix" {
  acctname     = var.valtix_account_name
  server       = var.valtix_controller_url
  port         = var.valtix_controller_port
  api_key_file = file(var.valtix_key_file)
}