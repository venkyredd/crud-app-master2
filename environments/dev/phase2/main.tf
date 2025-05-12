data "terraform_remote_state" "phase1" {
  backend = "s3"
  config = {
    bucket = "v-infra-backend"
    key    = "infra/terraform.tfstate"
    region = "us-east-2"
  }
}

module "ecs_service" {
  source              = "../../../modules/ecs-service"
  task_family         = var.task_family
  execution_role_arn  = data.terraform_remote_state.phase1.outputs.ecs_task_execution_role_arn
  cpu                 = var.cpu
  memory              = var.memory
  container_name      = var.container_name
  container_port      = var.container_port
  image_url           = var.image_url  # Injected by GitHub Actions
  ecs_cluster_id      = data.terraform_remote_state.phase1.outputs.ecs_cluster_id
  private_subnets     = data.terraform_remote_state.phase1.outputs.public_subnet_ids
  shared_sg_id        = data.terraform_remote_state.phase1.outputs.shared_sg_id
  target_group_arn    = data.terraform_remote_state.phase1.outputs.alb_target_group_arn
  service_name        = var.service_name
  desired_count       = var.desired_count
}
