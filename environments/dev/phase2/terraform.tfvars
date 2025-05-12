aws_region         = "us-east-1"
state_bucket_name  = "v-infra1"

# ECS cluster & ECR
cluster_name       = "ecs-cluster"
repository_name    = "ecs-app-repository"
execution_role_arn = "arn:aws:iam::011528270926:role/ecs-task-execution-role"

# Task definition sizing
task_family    = "my-task-family"
cpu            = "256"
memory         = "512"
container_name = "my-app"
container_port = 80

# Image URI (you can override via TF_VAR_image_url in CI)
image_url      = "011528270926.dkr.ecr.us-east-1.amazonaws.com/ecs-app-repository:latest"

# ECS service
service_name   = "my-service"
desired_count  = 1

# Networking (from Phase 1 outputs)
subnets = [
  "subnet-01ca585cef201d065",
  "subnet-010fbebcdde07728c",
]

security_groups = [
  "sg-0ac561299e17a0b96",
]

# ← This must be your *Target Group* ARN, e.g. from Phase 1:
target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:011528270926:targetgroup/app-tg/549df3f96badbb61"
