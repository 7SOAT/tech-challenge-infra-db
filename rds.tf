resource "aws_db_instance" "rds_instance" {
  identifier             = "tech-challenge-db"
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = data.aws_security_groups.rds_security_groups.ids
  db_subnet_group_name   = "main-rds-subnet-group"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "11"
  skip_final_snapshot    = true
  publicly_accessible    = false

  # Improved lifecycle management
  deletion_protection = false  # Helps prevent accidental deletion
  backup_retention_period = 7
}