resource "valtix_policy_rule_set" egress_policy_rule_set {
  name = var.egress_policy_ruleset_name
  rule {
    name        = "rule1"
    description = "placeholder rule for forwarding https"
    type        = "Forwarding"
    action      = "ALLOW_LOG"
    service     = valtix_service_object.forward-https.service_id
    state       = "DISABLED"
  }
}

resource "valtix_policy_rule_set" ingress_policy_rule_set {
  name = var.ingress_policy_ruleset_name
}

resource "valtix_policy_rule_set" ew_policy_rule_set {
  name = var.ew_policy_ruleset_name
  rule {
    name        = "rule1"
    description = "placeholder rule for forwarding https"
    type        = "Forwarding"
    action      = "ALLOW_LOG"
    service     = valtix_service_object.forward-https.service_id
    state       = "DISABLED"
  }
}