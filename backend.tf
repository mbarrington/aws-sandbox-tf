
# Local state by default (do nothing).
# To use remote state, uncomment and fill the S3 backend block below,
# then run: terraform init -migrate-state

# terraform {
#   backend "s3" {
#     bucket         = "YOUR-STATE-BUCKET-NAME"
#     key            = "terraform-sandbox/primary.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "YOUR-STATE-LOCK-TABLE"
#     encrypt        = true
#   }
# }
