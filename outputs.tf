output "rds_endpoint" {
  value       = module.rds.rds_endpoint
  description = "The endpoint of the RDS instance"
  sensitive   = true
}

output "rds_instance_id" {
  value       = module.rds.rds_instance_id
  description = "The ID of the RDS instance"
}
