output "repository_url" {
  value       = aws_ecr_repository.this.repository_url
  description = "Source ECR repository URL"
}
