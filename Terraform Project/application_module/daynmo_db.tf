resource "aws_dynamodb_table" "mydynmoDB" {
  name           = "employes-data"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "Employee-Id"

  attribute {
    name = "Employee-Id"
    type = "S"
  }
}
