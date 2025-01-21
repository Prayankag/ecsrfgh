# output.tf

output "ecr_repository_url" {
  value = aws_ecr_repository.my_repository.repository_url
  description = "The URL of the ECR repository"
}

output "ecs_cluster_id" {
  value = aws_ecs_cluster.my_cluster.id
  description = "The ID of the ECS cluster"
}

output "ecs_service_name" {
  value = aws_ecs_service.my_service.name
  description = "The name of the ECS service"
}

output "ecs_task_definition" {
  value = aws_ecs_task_definition.my_task_definition.family
  description = "The ECS task definition family"
}
