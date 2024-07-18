data "aws_dynamodb_table" "puppet-dynamodb-otp" {
  name = var.table_name
}