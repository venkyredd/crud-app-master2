variable "cluster_id" {}
variable "execution_role_arn" {}
variable "private_subnets" {}
variable "shared_security_group_id" {}
variable "target_group_arn" {}
variable "alb_listener_arn" {}
variable "ecr_repo_url" {}
variable "image_tag" {}
variable "cpu" { default = "256" }
variable "memory" { default = "512" }
variable "name_prefix" {}
