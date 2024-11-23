module "alb" {
  source       = "./modules/alb"
  vpc_id          = var.vpc_id
  subnets         = var.public_subnet
  target_group = var.target_group
}