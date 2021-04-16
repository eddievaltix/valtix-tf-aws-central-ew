// Create AWS IAM roles and CloudWatch event rules for inventory

module "iam" {
  source                        = "github.com/valtix-security/terraform-aws-valtix-iam"
  prefix                        = var.iam_prefix
  controller_aws_account_number = var.controller_account_number
  ExternalId                    = var.external_id
  region                        = var.region
  s3_bucket                     = var.s3_bucket
  deployment_name               = var.valtix_account_name
}