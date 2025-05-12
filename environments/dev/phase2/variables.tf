variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "my-ecs-cluster"
}

variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "my-ecr-repo"
}

variable "execution_role_arn" {
  description = "IAM role ARN used by ECS for pulling images and sending logs"
  type        = string
}

variable "task_family" {
  description = "ECS Task Definition family name"
  type        = string
  default     = "my-task-family"
}

variable "cpu" {
  description = "Task CPU units"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Task memory (MiB)"
  type        = string
  default     = "512"
}

variable "container_name" {
  description = "Container name used inside task definition"
  type        = string
  default     = "my-app"
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 80
}

variable "image_tag" {
  description = "Docker image tag to deploy"
  type        = string
  default     = "latest"
}

variable "image_url" {
  description = "Full ECR image URI (including tag)"
  type        = string
}

variable "service_name" {
  description = "ECS service name"
  type        = string
  default     = "my-service"
}

variable "desired_count" {
  description = "Number of tasks to run"
  type        = number
  default     = 1
}

variable "subnets" {
  description = "VPC subnet IDs for the ECS service"
  type        = list(string)
}

variable "security_groups" {
  description = "Security group IDs for the ECS service"
  type        = list(string)
}

variable "target_group_arn" {
  description = "ALB target group ARN to attach the service to"
  type        = string
}
