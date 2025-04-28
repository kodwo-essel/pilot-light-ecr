module "ecr" {
  source = "./modules/ecr"

  providers = {
    aws = aws.primary
  }

  region = var.primary_region
  replica_region = var.secondary_region
  name = var.ecr_name

  tags = {
    Project = "Failover"
    Env     = "prod"
  }
}

module "ecr_replication" {
  source = "./modules/ecr_replication"

  providers = {
    aws = aws.primary
  }
  replica_region = var.secondary_region
  prefix_filter = var.ecr_name
}