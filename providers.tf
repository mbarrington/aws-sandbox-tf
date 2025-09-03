
# Provider config supports:
# - AWS SSO: export AWS_PROFILE=sandbox (or set in envs/dev/terraform.tfvars via profile)
# - AWS CLI named profile
# - Standard env vars (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION)
provider "aws" {
  region  = var.region
  profile = var.profile
}
