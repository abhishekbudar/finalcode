output "vpc_id" {
  value       = module.vpc.vpc_id
}

output "private_subnet"{
    value = module.vpc.private_subnet
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}