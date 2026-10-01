variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "orders-table"
}

variable "billing_mode" {
  description = "DynamoDB billing mode"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "DynamoDB partition key"
  type        = string
  default     = "user_id"
}

variable "range_key" {
  description = "DynamoDB sort key"
  type        = string
  default     = "order_id"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project tag"
  type        = string
  default     = "DynamoDB-Automation"
}