# Valtix Terraform Centralized Ingress, Egress & East West gateway Example Template
This Terraform example template creates a Valtix ingress, egress and east west gateways in a AWS centralized inspection architecture with Transit Gateway.  The templates are split into the following template folders:

## valtix_iam
This template creates the IAM policies and roles required for Valtix controller to work with the AWS account as well as the account registration on the Valtix controller.  This is created in a separate template as these resources tend to be mostly static in a deployment.  

## valtix_policy
This template creates a simple disabled rule in the policy ruleset as a placeholder.  For more comprehensive rules, see [Valtix Terraform Registry docs](https://registry.terraform.io/providers/valtix-security/valtix/latest/docs).  The reason why this was created as a separate template is that these resources tend to be more dynamic in most deployments.

## valtix_infrastructure
This template creates the Valtix Services VPC and Valtix Gateways in the account.  The reason why this is created as a separate template is that these resources tend to be static in most deployments. The Valtix gateway deployment expects that a EC2 keypair has already been created and the name of the keypair should be referenced in terraform.tfvars

*(Note) This template has dependencies on outputs from the valtix_iam and valtix_policy templates.  The best way to reference these outputs is to store remote state for valtix_iam and valtix_policy using a remote state backend like S3.  Use this simple module to create the resources needed for Terraform remote state [link](https://github.com/eddievaltix/terraform-remotestate-s3).  In a future Valtix Terraform provider release, data source for policy ruleset id will be supported*

## How to use:
1. download aws cli and configure the credentials profile in ~/.aws/credentials.  You will need to define the profile in the terraform.tfvars
1. git clone this repo
1. follow instructions [here](https://registry.terraform.io/providers/valtix-security/valtix/latest/docs) to download Valtix API key file and store on a directory
1. use the terraform_tfvars.example files to create a terraform.tfvars file for each template
1. run terraform init, terraform plan, terraform apply
