output "ingress_policy_ruleset_id" {
  description = "ingress policy ruleset ID to be used by valtix_infrastructure gateway.tf"
  value       = valtix_policy_rule_set.ingress_policy_rule_set.rule_set_id
}

output "egress_policy_ruleset_id" {
  description = "egress policy ruleset ID to be used by valtix_infrastructure gateway.tf"
  value       = valtix_policy_rule_set.egress_policy_rule_set.rule_set_id
}

output "ew_policy_ruleset_id" {
  description = "ew policy ruleset ID to be used by valtix_infrastructure gateway.tf"
  value       = valtix_policy_rule_set.ew_policy_rule_set.rule_set_id
}

