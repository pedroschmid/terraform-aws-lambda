resource "aws_dynamodb_table" "this" {
  name           = var.DYNAMO_TABLE_NAME
  hash_key       = "id"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "id"
    type = "S"
  }
}