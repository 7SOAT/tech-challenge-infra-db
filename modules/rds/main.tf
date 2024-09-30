resource "aws_db_instance" "rds_instance" {
  identifier             = var.db_identifier
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  engine                 = "postgres"
  engine_version         = "13.7"
  skip_final_snapshot    = true
  publicly_accessible    = false

  # Improved lifecycle management
  deletion_protection = true  # Helps prevent accidental deletion
  backup_retention_period = 7
}

# Improved outputs
output "rds_endpoint" {
  value = aws_db_instance.rds_instance.endpoint
  sensitive = true
}

output "rds_instance_id" {
  value = aws_db_instance.rds_instance.id
}
