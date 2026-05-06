aws_region = "us-east-1"

db_name     = "appdb"
db_username = "admin"
db_password = "StrongPassword123!"

db_instance_class = "db.t3.micro"
allocated_storage  = 20

# PODSTAW SWOJE ID Z VPC
vpc_security_group_ids = ["sg-01b9b00358cb78b0d"]

subnet_ids = [
  "subnet-0f8222cc9509ca093",
  "subnet-09f6b35ec3df365cb"
]