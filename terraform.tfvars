# terraform.tfvars

db_identifier         = "my-db-instance"
db_name               = "my_database"
db_username           = "admin"
db_password           = "securepassword123"
vpc_security_group_ids = ["sg-0123456789abcdef0"]
db_subnet_group_name  = "my-db-subnet-group"
aws_region            = "us-east-1"
instance_class        = "db.t3.micro"
allocated_storage     = 20
