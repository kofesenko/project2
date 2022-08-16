#Set up ECR
resource "aws_ecr_repository" "some_app" {
  name                 = "some_app"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  force_delete = true
}