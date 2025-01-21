# variables.tf

variable "region" {
  description = "The AWS region where resources will be created"
  default     = "us-east-1"
}

variable "ecrrepositoryname" {
  description = "The name of the ECR repository"
  default     = "my-ecr-repo"
}

variable "ecsclustername" {
  description = "The ECS cluster name"
  default     = "my-ecs-cluster"
}

variable "ecsservicename" {
  description = "The ECS service name"
  default     = "my-ecs-service"
}

variable "ecs_task_definition_name" {
  description = "The ECS task definition name"
  default     = "my-ecs-task"
}

variable "desired_task_count" {
  description = "The desired number of ECS tasks"
  default     = 1
}

variable "vpc_id" {
  description = "The VPC ID for ECS and ECR"
  default = "172.31.0.0/16"
}

variable "subnet_ids" {
  description = "The subnet IDs where ECS services will be deployed"
  type        = list(string)
  default = [ "subnet-0ac4218ca3f8032d0"]
}


variable "cpu" {
  description = "The amount of CPU to allocate for the ECS task"
  type        = number
  default     = "1024"
}

variable "memory" {
  description = "The amount of memory (in MiB) to allocate for the ECS task"
  type        = number
  default     = "2048"
}
