// Data source the policy ruleset IDs
data "valtix_policy_rule_set" "ingress_policy_rule_set" {
  name = var.ingress_policy_ruleset_name
}

data "valtix_policy_rule_set" "ew_policy_rule_set" {
  name = var.ew_policy_ruleset_name
}

data "valtix_policy_rule_set" "egress_policy_rule_set" {
  name = var.egress_policy_ruleset_name
}

// Create Valtix Ingress and Egress Gateways
resource "valtix_gateway" "gw-ingress" {
  name                  = var.valtix_ingress_gw_name
  description           = "Valtix Ingress Gateway in ${var.region}"
  csp_account_name      = var.cloud_account_name
  instance_type         = "AWS_M5_2XLARGE"
  gateway_image         = var.gw_image_name
  mode                  = "HUB"
  security_type         = "INGRESS"
  policy_rule_set_id    = data.valtix_policy_rule_set.ingress_policy_rule_set.rule_set_id
  ssh_key_pair          = var.gw_keypair_name
  aws_iam_role_firewall = var.valtix_firewall_role_name
  region                = var.region
  vpc_id                = valtix_service_vpc.service_vpc_ingress.id
}

resource "valtix_gateway" "gw-egress" {
  name               = var.valtix_egress_gw_name
  description        = "Valtix Egress Gateway in ${var.region}"
  csp_account_name   = var.cloud_account_name
  instance_type      = "AWS_M5_2XLARGE"
  gateway_image      = var.gw_image_name
  mode               = "HUB"
  security_type      = "EGRESS"
  policy_rule_set_id = data.valtix_policy_rule_set.egress_policy_rule_set.rule_set_id
  ssh_key_pair       = var.gw_keypair_name

  aws_iam_role_firewall = var.valtix_firewall_role_name
  region                = var.region
  vpc_id                = valtix_service_vpc.service_vpc_egress.id
  aws_gateway_lb        = "true" //this should be set only if deploying in regions where gateway load balancer is supported
}

resource "valtix_gateway" "gw-ew" {
  name                  = var.valtix_ew_gw_name
  description           = "Valtix East West Gateway in ${var.region}"
  csp_account_name      = var.cloud_account_name
  instance_type         = "AWS_M5_2XLARGE"
  gateway_image         = var.gw_image_name
  mode                  = "HUB"
  security_type         = "EGRESS"
  policy_rule_set_id    = data.valtix_policy_rule_set.ew_policy_rule_set.rule_set_id
  ssh_key_pair          = var.gw_keypair_name
  aws_iam_role_firewall = var.valtix_firewall_role_name
  region                = var.region
  vpc_id                = valtix_service_vpc.service_vpc_ew.id
  aws_gateway_lb        = "true" //this should be set only if deploying in regions where gateway load balancer is supported
  settings {
    name  = "gateway.snat_mode"
    value = "0" //this is to disable SNAT for east west
  }
}