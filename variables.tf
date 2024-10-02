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