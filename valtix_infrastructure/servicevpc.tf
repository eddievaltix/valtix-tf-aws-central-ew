resource "valtix_service_vpc" service_vpc_ingress {
  name               = var.services_vpc_ingress_name
  csp_account_name   = var.cloud_account_name
  region             = var.region
  cidr               = var.ingress_cidr
  availability_zones = var.availability_zones
}

resource "valtix_service_vpc" service_vpc_egress {
  name               = var.services_vpc_egress_name
  csp_account_name   = var.cloud_account_name
  region             = var.region
  cidr               = var.egress_cidr
  availability_zones = var.availability_zones
}

resource "valtix_service_vpc" service_vpc_ew {
  name               = var.services_vpc_ew_name
  csp_account_name   = var.cloud_account_name
  region             = var.region
  cidr               = var.ew_cidr
  availability_zones = var.availability_zones
}