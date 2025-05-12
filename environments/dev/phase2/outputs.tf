output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = module.ecs_service.ecs_service_name
}

output "ecs_task_definition_arn" {
  description = "The ARN of the ECS Task Definition"
  value       = module.ecs_service.task_definition_arn
}
