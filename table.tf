resource "aws_dynamodb_table" "dynamodb-table" {
  name           = "cmanagement-${var.environtment}"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "pk"
  range_key      = "sk"

  attribute {
    name = "pk"
    type = "S"
  }

  attribute {
    name = "sk"
    type = "S"
  }

  attribute {
    name = "house_id"
    type = "S"
  }

  attribute {
    name = "compound_id"
    type = "S"
  }

  global_secondary_index {
    name               = "gsi_houses_compound"
    hash_key           = "sk"
    write_capacity     = 5
    read_capacity      = 5
    projection_type    = "ALL"
  }

  global_secondary_index {
    name               = "gsi_payments_house"
    hash_key           = "house_id"
    range_key          = "sk"
    write_capacity     = 5
    read_capacity      = 5
    projection_type    = "ALL"
  }

  global_secondary_index {
    name               = "gsi_compound_data"
    hash_key           = "compound_id"
    range_key          = "sk"
    write_capacity     = 5
    read_capacity      = 5
    projection_type    = "ALL"
  }
}