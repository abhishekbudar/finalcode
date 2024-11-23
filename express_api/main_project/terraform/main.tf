module "vpc"{
    source = "./services/vpc"
    az = var.az
    vpc_cidr = var.vpc_cidr
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
}

module "eks"{
    source = "./services/eks"
    vpc_id = module.vpc.vpc_id
    private_subnet = module.vpc.private_subnet
}

module "alb" {
  source       = "./services/alb"
  vpc_id       = module.vpc.vpc_id
  subnets      = module.vpc.public_subnets
  target_group = var.target_group
}