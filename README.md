
# Terraform Sandbox Skeleton (AWS)

A minimal-but-solid starting point for experimenting in a sandbox AWS account.

## What’s inside
- Remote state bootstrap (`bootstrap-state/`) to create an S3 bucket + DynamoDB table.
- Provider & versions pinned, with SSO/CLI profile support.
- Clean naming via locals and consistent tagging.
- Simple VPC (2 public subnets) + a sample EC2 instance.
- `envs/dev/terraform.tfvars` example for quick config.

> ⚠️ Security note: The demo EC2 SG defaults to SSH ingress from `0.0.0.0/0` for simplicity. Restrict to your IP before real use.

## Quick start

1) (Optional) **Bootstrap remote state** (S3 + DynamoDB) in your sandbox account:
```bash
cd bootstrap-state
terraform init
terraform apply
```
Take note of the `bucket` and `dynamodb_table` outputs.

2) **Configure backend** in the root `backend.tf`:
- Either keep **local state** (default) or
- uncomment the S3 backend block and fill in bucket, key, region, and dynamodb_table.

3) **Apply the main stack**:
```bash
cd ..
terraform init
terraform plan -var-file="envs/dev/terraform.tfvars"
terraform apply -var-file="envs/dev/terraform.tfvars"
```

4) **Clean up** when done:
```bash
terraform destroy -var-file="envs/dev/terraform.tfvars"
```

## Layout
```
terraform-sandbox-skeleton/
├── README.md
├── .gitignore
├── backend.tf
├── locals.tf
├── main.tf
├── outputs.tf
├── providers.tf
├── variables.tf
├── versions.tf
├── envs/
│   └── dev/
│       └── terraform.tfvars
├── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── vpc/
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── bootstrap-state/
    ├── main.tf
    ├── outputs.tf
    ├── providers.tf
    ├── variables.tf
    └── versions.tf
```
