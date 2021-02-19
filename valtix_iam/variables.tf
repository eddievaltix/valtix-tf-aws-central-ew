//provider variables
variable "aws_profile_name_security" {
  description = "AWS profile credentials used to establish connection to AWS Network Security Account where Valtix is deployed"
}
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
variable "iam_prefix" {
  description = "prefix to apply to Valtix IAM roles"
  default     = "valtix"
}
variable "controller_account_number" {
  description = "AWS controller account number provided by Valtix"
}
variable "account_number" {
  description = "AWS account where Valtix will be deployed"
}
variable "external_id" {
  description = "external ID found in AWS account creation in Valtix UI"
}
variable "region" {
  description = "AWS region to deploy Valtix"
}
variable "cloud_account_name" {
  description = "Valtix cloud account name"
}
variable "inventory_region" {
  description = "list of inventory regions to enable for Valtix to discover"
}
variable "s3_bucket" {
  description = "name of S3 bucket where you want to store cloudtrail, route53 query logs and vpc flow logs"
}
