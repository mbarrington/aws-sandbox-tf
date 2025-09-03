
variable "project" {
  description = "Project or app name (used in naming/tags)."
  type        = string
  default     = "sandbox"
}

variable "environment" {
  description = "Environment name (e.g., dev, test, prod)."
  type        = string
  default     = "dev"
}

variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "profile" {
  description = "AWS CLI/SSO profile name. Leave blank to use env vars."
  type        = string
  default     = "sandbox"
}

variable "ssh_ingress_cidr" {
  description = "CIDR allowed to SSH to demo EC2 (change to your IP!)."
  type        = string
  default     = "0.0.0.0/0"
}

variable "instance_type" {
  description = "EC2 instance type for the demo node."
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name (optional)."
  type        = string
  default     = null
}

variable "extra_tags" {
  description = "Additional tags to merge into all resources."
  type        = map(string)
  default     = {}
}
