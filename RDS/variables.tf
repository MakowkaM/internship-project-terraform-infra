variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "db_name" {
  type        = string
  description = "Database name"
}

variable "db_username" {
  type        = string
  description = "Master username"
}

variable "db_password" {
  type        = string
  description = "Master password"
  sensitive   = true
}

variable "db_instance_class" {
  type        = string
  description = "RDS instance type"
}

variable "allocated_storage" {
  type        = number
  description = "Storage size in GB"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for DB subnet group"
}