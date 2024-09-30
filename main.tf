terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

# Calling the RDS module
module "rds" {
  source                = "./modules/rds"
  db_identifier         = var.db_identifier
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name  = var.db_subnet_group_name
  instance_class        = var.instance_class
  allocated_storage     = var.allocated_storage
}

# Sensitive outputs to avoid exposing passwords
output "rds_endpoint" {
  value       = module.rds.rds_endpoint
  description = "RDS endpoint for the created instance"
  sensitive   = true
}

output "rds_instance_id" {
  value       = module.rds.rds_instance_id
  description = "RDS instance ID for the created instance"
}
