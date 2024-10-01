# modules/rds/outputs.tf

# Improved outputs
output "rds_endpoint" {
  value = aws_db_instance.rds_instance.endpoint
  sensitive = true
}

output "rds_instance_id" {
  value = aws_db_instance.rds_instance.id
}
