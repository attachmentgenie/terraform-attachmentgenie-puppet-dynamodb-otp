data "aws_dynamodb_table" "puppet_dynamodb_otp" {
  name = var.table_name
}
