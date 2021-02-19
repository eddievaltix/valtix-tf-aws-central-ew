//provider variables
variable "valtix_account_name" {
  description = "account name provided by Valtix"
}
variable "valtix_controller_url" {
  description = "Valtix controller URL provided by Valtix"
}
variable "valtix_controller_port" {
  description = "this is the Valtix controller API port"
  default     = "8091"
}
variable "valtix_key_file" {
  description = "this is the relative path and filename to the Valtix API key file"
}

//iam and cloud account variables
variable "region" {
  description = "AWS region to deploy Valtix"
}
variable "cloud_account_name" {
  description = "Valtix cloud account name"
}

//policy ruleset variables
variable "ingress_policy_ruleset_name" {
  description = "name of ingress policy ruleset"
}
variable "egress_policy_ruleset_name" {
  description = "name of egress policy ruleset"
}
variable "ew_policy_ruleset_name" {
  description = "name of ew policy ruleset"
}
