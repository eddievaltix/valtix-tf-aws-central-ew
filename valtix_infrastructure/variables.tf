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

//service vpc variables
variable "services_vpc_ingress_name" {
  description = "name of ingress Valtix Services VPC"
}
variable "services_vpc_egress_name" {
  description = "name of egress Valtix Services VPC"
}
variable "services_vpc_ew_name" {
  description = "name of eastwest Valtix Services VPC"
}
variable "ingress_cidr" {
  description = "CIDR block for ingress services VPC"
}
variable "egress_cidr" {
  description = "CIDR block for egress services VPC"
}
variable "ew_cidr" {
  description = "CIDR block for eastwest services VPC"
}
variable "availability_zones" {
  description = "List of Availability Zones for services VPC"
}

//Valtix gateway variables
variable "valtix_ingress_gw_name" {
  description = "name of Valtix ingress gateway"
}
variable "valtix_egress_gw_name" {
  description = "name of Valtix ingress gateway"
}
variable "valtix_ew_gw_name" {
  description = "name of Valtix eastwest gateway"
}
variable "gw_keypair_name" {
  description = "name of EC2 keypair to use to deploy Valtix gateways"
}
variable "gw_image_name" {
  description = "name of gateway image to use to deploy Valtix gateways.  This can be found in the Valtix UI when deploying Valtix gateways"
}
variable "tgw_id" {
  description = "id of transit gateway to be used for Valtix gateways"
}
variable "valtix_firewall_role_name" {
  description = "name of the AWS IAM firewall role created by valtix_iam template as found as an output"
}

// The below inputs are retrieved from outputs from the valtix_policy template.  It is recommended that you data source using Terraform
// Remote State to retrieve these values.  There is a roadmap item to support data sourcing of the valtix policy ruleset resource
variable "valtix_ingress_policy_ruleset_id" {
  description = "policy ruleset id of valtix ingress gateway"
}
variable "valtix_egress_policy_ruleset_id" {
  description = "policy ruleset id of valtix egress gateway"
}
variable "valtix_ew_policy_ruleset_id" {
  description = "policy ruleset id of valtix eastwest gateway"
}
