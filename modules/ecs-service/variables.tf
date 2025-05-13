variable "task_family" {
  type        = string
  description = "ECS Task Definition family name"
}

variable "execution_role_arn" {
  type        = string
  description = "IAM role ARN used by ECS for pulling images and sending logs"
}

variable "cpu" {
  type    = string
  default = "256"
}

variable "memory" {
  type    = string
  default = "512"
}

variable "container_name" {
  type        = string
  description = "Name of the container"
}

variable "container_port" {
  type        = number
  description = "Port the container listens on"
}

variable "image_url" {
  type        = string
  description = "Full Docker image URI (e.g., <account>.dkr.ecr.<region>.amazonaws.com/repo:tag)"
}

variable "ecs_cluster_id" {
  type        = string
  description = "ID of the ECS cluster"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet IDs for the ECS service"
}

variable "shared_sg_id" {
  type        = string
  description = "Security group ID for the ECS service"
}

variable "target_group_arn" {
  type        = string
  description = "ARN of the ALB target group"
}

variable "service_name" {
  type        = string
  description = "ECS service name"
}

variable "desired_count" {
  type    = number
  default = 1
}
