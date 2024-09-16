resource "aws_db_instance" "postgres" {
  engine            = "postgres"
  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  db_name           = var.db_name
  username          = var.db_username
  password          = var.db_password
  parameter_group_name = "default.postgres13"
  skip_final_snapshot = true
  publicly_accessible = false

  # Security group
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  lifecycle {
    prevent_destroy = true
  }
}

# Security group to allow connections to the RDS
resource "aws_security_group" "db_sg" {
  name        = "db_security_group"
  description = "Allow PostgreSQL access"
  vpc_id      = var.vpc_id  # Defina seu VPC ID

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Ajuste para limitar o acesso, por exemplo: ["your_ip/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
