module "ecs_service" {
  source = "./modules/ecs-service"

  task_family        = var.task_family
  execution_role_arn = var.execution_role_arn
  cpu                = var.cpu
  memory             = var.memory
  container_name     = var.container_name
  container_port     = var.container_port
  ecr_repo_url       = module.ecs.repository_url
  image_tag          = var.image_tag
  ecs_cluster_id     = module.ecs.cluster_id
  private_subnets    = module.network.public_subnet_ids
  shared_sg_id       = module.security_group.shared_sg_id
  target_group_arn   = module.alb.target_group_arn
  service_name       = var.service_name
  desired_count      = var.desired_count
}
