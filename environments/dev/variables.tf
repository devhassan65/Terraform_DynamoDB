variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "DynamoDB billing mode"
  type        = string
}

variable "hash_key" {
  description = "DynamoDB partition key"
  type        = string
}

variable "range_key" {
  description = "DynamoDB sort key"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
}

variable "project" {
  description = "Project tag"
  type        = string
}