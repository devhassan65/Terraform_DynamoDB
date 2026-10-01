module "dynamodb" {
  source = "../../modules/dynamodb"

  table_name   = var.table_name
  billing_mode = var.billing_mode
  hash_key     = var.hash_key
  range_key    = var.range_key
  environment  = var.environment
  project      = var.project
}