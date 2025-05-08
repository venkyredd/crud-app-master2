module "vpc" {
  source = "../../modules/vpc"
  name_prefix = "v-crud"
  # other vars
}

module "security_groups" {
  source     = "../../modules/security_groups"
  vpc_id     = module.vpc.vpc_id
  name_prefix = "v-crud"
}

module "ecs_cluster" {
  source = "../../modules/ecs_cluster"
  name_prefix = "v-crud"
}

module "ecr" {
  source = "../../modules/ecr"
  name_prefix = "v-crud"
}

module "alb" {
  source = "../../modules/alb"
  vpc_id = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
  shared_security_group_id = module.security_groups.shared_security_group_id
  name_prefix = "v-crud"
}

module "iam" {
  source = "../../modules/iam"
  name_prefix = "v-crud"
}
