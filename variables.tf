variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
  default     = "my-db-instance"
}

variable "db_name" {
  description = "The name of the initial database to create"
  type        = string
  default     = "my_database"
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
  default     = "securepassword123"
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the RDS instance"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "instance_class" {
  description = "The class of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "The amount of allocated storage in GB"
  type        = number
  default     = 20
}
