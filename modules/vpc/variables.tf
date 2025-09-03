
variable "name_prefix" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "az_count" {
  type    = number
  default = 2
}

variable "tags" {
  type    = map(string)
  default = {}
}
