data "aws_security_groups" "rds_security_groups" {
    filter {
      name = "group-name"
      values = ["RDS Security Group"]
    }
}