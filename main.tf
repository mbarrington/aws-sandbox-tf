
module "vpc" {
  source              = "./modules/vpc"
  name_prefix         = local.name_prefix
  az_count            = 2
  cidr_block          = "10.42.0.0/16"
  public_subnet_cidrs = ["10.42.1.0/24", "10.42.2.0/24"]
  tags                = local.tags
}

module "ec2" {
  source           = "./modules/ec2"
  name_prefix      = local.name_prefix
  subnet_id        = module.vpc.public_subnet_ids[0]
  ssh_ingress_cidr = var.ssh_ingress_cidr
  instance_type    = var.instance_type
  key_name         = var.key_name
  tags             = local.tags
}
