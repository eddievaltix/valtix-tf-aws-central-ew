resource "valtix_policy_rule_set" "egress_policy_rule_set" {
  name = var.egress_policy_ruleset_name
  rule {
    name                      = "forward-all-allow"
    description               = "rule for forwarding all traffic"
    type                      = "Forwarding"
    action                    = "ALLOW_LOG"
    service                   = valtix_service_object.forward-all.service_id
    state                     = "ENABLED"
    network_intrusion_profile = valtix_profile_network_intrusion.ips_auto.profile_id
  }
}

resource "valtix_policy_rule_set" "ingress_policy_rule_set" {
  name = var.ingress_policy_ruleset_name
}

resource "valtix_policy_rule_set" "ew_policy_rule_set" {
  name = var.ew_policy_ruleset_name
  rule {
    name                      = "forward-all-allow"
    description               = "rule for forwarding all traffic"
    type                      = "Forwarding"
    action                    = "ALLOW_LOG"
    service                   = valtix_service_object.forward-all.service_id
    state                     = "ENABLED"
    network_intrusion_profile = valtix_profile_network_intrusion.ips_auto.profile_id
  }
}