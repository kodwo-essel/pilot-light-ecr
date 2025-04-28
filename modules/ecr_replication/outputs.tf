output "replica_repository_url" {
  value = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.replica_region}.amazonaws.com/${var.prefix_filter}"
}
