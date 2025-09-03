
locals {
  # Adjust to your naming preferences
  project     = var.project
  environment = var.environment

  name_prefix = "${var.project}-${var.environment}"
  tags = merge({
    Project     = var.project
    Environment = var.environment
    ManagedBy   = "Terraform"
  }, var.extra_tags)
}
