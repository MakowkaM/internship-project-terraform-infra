# DB Subnet Group
resource "aws_db_subnet_group" "this" {
  name       = "${var.db_name}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_name}-subnet-group"
  }
}

# RDS Instance
resource "aws_db_instance" "this" {
  identifier = var.db_name

  engine         = "postgres"
  engine_version = null

  instance_class    = var.db_instance_class
  allocated_storage = var.allocated_storage

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = var.vpc_security_group_ids

  publicly_accessible = false

  skip_final_snapshot = true

  backup_retention_period = 1

  multi_az = false

  storage_encrypted = true

  tags = {
    Name = var.db_name
  }
}