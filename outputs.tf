
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The VPC ID"
}

output "public_subnet_ids" {
  value       = module.vpc.public_subnet_ids
  description = "Public subnet IDs"
}

output "ec2_public_ip" {
  value       = module.ec2.public_ip
  description = "Public IP of the demo EC2 instance"
}
