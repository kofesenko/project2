#Set up ECR
resource "aws_ecr_repository" "some_app" {
  name                 = "some_app"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  force_delete = true
}

#policy to keep only 30 images in ecr
resource "aws_ecr_lifecycle_policy" "some_app_policy" {
  repository = aws_ecr_repository.some_app.name

  policy = jsonencode({
    "rules": [
        {
            "rulePriority": 1,
            "description": "Keep last 30 images",
            "selection": {
                "tagStatus": "any",
                "countType": "imageCountMoreThan",
                "countNumber": 30
            },
            "action": {
                "type": "expire"
            }
        }
    ]
})
}