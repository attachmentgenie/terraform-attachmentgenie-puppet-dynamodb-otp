resource "time_static" "current_date" {}

resource "aws_dynamodb_table_item" "token" {
  table_name = data.aws_dynamodb_table.puppet-dynamodb-otp.name
  hash_key   = data.aws_dynamodb_table.puppet-dynamodb-otp.hash_key

  item = <<ITEM
{
  "expire_at_unix": {"N": "${time_static.current_date.unix + var.ttl}"},
  "fqdn": {"S": "${var.fqdn}"},
  "token_table_item": {"S": "${var.token}"}
}
ITEM
}