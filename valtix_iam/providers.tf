// Define both AWS and Valtix Terraform Resource Providers
terraform {
  required_providers {
    valtix = {
      source  = "valtix-security/valtix"
      version = "2.5.1"
    }
  }
}

provider "aws" {
  profile = var.aws_profile_name_security
  region  = var.region
  version = "~> 3.25.0"
}

provider "valtix" {
  acctname     = var.valtix_account_name
  server       = var.valtix_controller_url
  port         = var.valtix_controller_port
  api_key_file = file(var.valtix_key_file)
}