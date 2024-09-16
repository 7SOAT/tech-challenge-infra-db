output "db_endpoint" {
  description = "RDS PostgreSQL endpoint"
  value       = aws_db_instance.postgres.endpoint
}

output "db_instance_id" {
  description = "ID of the RDS instance"
  value       = aws_db_instance.postgres.id
}
