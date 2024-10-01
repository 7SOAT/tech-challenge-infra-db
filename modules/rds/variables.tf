variable "db_identifier" {
  description = "The RDS instance identifier"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The master username"
  type        = string
}

variable "db_password" {
  description = "The master password"
  type        = string
  sensitive   = true
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The DB subnet group name"
  type        = string
}

variable "instance_class" {
  description = "The DB instance class"
  type        = string
}

variable "allocated_storage" {
  description = "The amount of allocated storage"
  type        = number
  default     = 20
}
