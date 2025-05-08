module "app" {
  source                = "../../modules/app"
  cluster_id            = module.ecs_cluster.ecs_cluster_id
  execution_role_arn    = module.iam.execution_role_arn
  private_subnets       = module.vpc.private_subnets
  shared_security_group_id = module.security_groups.shared_security_group_id
  target_group_arn      = module.alb.target_group_arn
  alb_listener_arn      = module.alb.alb_listener_arn
  ecr_repo_url          = module.ecr.repository_url
  image_tag             = var.image_tag
  name_prefix           = "v-crud"
}
