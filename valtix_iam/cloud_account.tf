resource "valtix_cloud_account" aws1 {
  name                     = var.cloud_account_name
  csp_type                 = "AWS"
  aws_credentials_type     = "AWS_IAM_ROLE"
  aws_iam_role             = time_sleep.cloud_account_delay.triggers["controller_iam_role"]
  aws_account_number       = var.account_number
  aws_iam_role_external_id = var.external_id
  inventory_monitoring {
    regions          = var.inventory_region
    refresh_interval = 60
  }
  depends_on = [module.iam] //need to add explicit dependency otherwise IAM policy could be deleted far before dependencies are destroyed
}

//adding a short delay as it takes a bit of time for IAM creation to complete before AWS IAM API is responsive
resource "time_sleep" cloud_account_delay {
  create_duration = "10s"

  triggers = {
    # This sets up a proper dependency on the IAM module
    controller_iam_role = module.iam.valtix_controller_role_arn
  }
}