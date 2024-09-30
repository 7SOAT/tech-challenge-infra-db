# modules/rds/outputs.tf

# Remove these lines:
output "rds_endpoint" {
  value = aws_db_instance.example.endpoint
}

output "rds_instance_id" {
  value = aws_db_instance.example.id
}
