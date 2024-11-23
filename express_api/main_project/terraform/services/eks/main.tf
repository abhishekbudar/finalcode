module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "express-eks-cluster"
  cluster_version = "1.27"
  vpc_id          = var.vpc_id
  subnets         = var.private_subnet

  node_groups = {
    default = {
      desired_capacity = 3
      max_capacity     = 5
      min_capacity     = 2
      instance_type    = "t3.medium"
    }
  }
}