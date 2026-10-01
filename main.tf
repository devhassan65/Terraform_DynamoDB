resource "aws_dynamodb_table" "orders" {
  name         = var.table_name
  billing_mode = var.billing_mode

  hash_key  = var.hash_key
  range_key = var.range_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  attribute {
    name = var.range_key
    type = "S"
  }

  attribute {
    name = "order_status"
    type = "S"
  }

  global_secondary_index {
    name            = "OrderStatusIndex"
    hash_key        = "order_status"
    projection_type = "ALL"
  }

  point_in_time_recovery {
    enabled = true
  }

  ttl {
    attribute_name = "ttl"
    enabled        = true
  }

  server_side_encryption {
    enabled = true
  }

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}

resource "aws_dynamodb_table_item" "order1" {
  table_name = aws_dynamodb_table.orders.name
  hash_key   = var.hash_key
  range_key  = var.range_key

  item = jsonencode({
    user_id      = { "S" = "U-101" }
    order_id     = { "S" = "O-132" }
    product      = { "S" = "Laptop" }
    price        = { "N" = "100000" }
    order_status = { "S" = "Confirmed" }
    ttl          = { "N" = "11728394" }
  })
}

resource "aws_dynamodb_table_item" "order2" {
  table_name = aws_dynamodb_table.orders.name
  hash_key   = var.hash_key
  range_key  = var.range_key

  item = jsonencode({
    user_id      = { "S" = "U-102" }
    order_id     = { "S" = "O-133" }
    product      = { "S" = "Mobile" }
    price        = { "N" = "75000" }
    order_status = { "S" = "Pending" }
    ttl          = { "N" = "11728394" }
  })
}

resource "aws_dynamodb_table_item" "order3" {
  table_name = aws_dynamodb_table.orders.name
  hash_key   = var.hash_key
  range_key  = var.range_key

  item = jsonencode({
    user_id      = { "S" = "U-103" }
    order_id     = { "S" = "O-134" }
    product      = { "S" = "Keyboard" }
    price        = { "N" = "5000" }
    order_status = { "S" = "Shipped" }
    ttl          = { "N" = "11728394" }
  })
}