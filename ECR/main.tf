resource "aws_ecr_repository" "backend" {
  name                 = "noteapp-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Environment = "production"
    Service     = "backend"
  }
}

resource "aws_ecr_repository" "frontend" {
  name                 = "noteapp-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Environment = "production"
    Service     = "frontend"
  }
}

resource "aws_ecr_repository" "worker" {
  name                 = "noteapp-worker"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Environment = "production"
    Service     = "worker"
  }
}