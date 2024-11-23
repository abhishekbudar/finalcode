
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  name    = "eks-vpc"
  cidr    = var.vpc_cidr
  azs     = var.az
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}
