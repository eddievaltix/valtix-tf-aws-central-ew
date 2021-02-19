output "valtix_firewall_role_name" {
  description = "name of the Valtix firewall IAM role used by valtix_infrastructure gateway.tf"
  value       = module.iam.valtix_firewall_role_name
}