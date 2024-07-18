variable "name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "puppet-dynamodb-otp"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}