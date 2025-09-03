
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "profile" {
  type    = string
  default = "sandbox"
}

variable "bucket_name" {
  description = "Name for the S3 state bucket (must be globally unique)."
  type        = string
}

variable "table_name" {
  description = "Name for the DynamoDB lock table."
  type        = string
  default     = "tf-state-locks"
}
