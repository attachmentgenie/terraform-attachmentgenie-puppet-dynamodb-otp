variable "fqdn" {
  description = "fqdn for node"
  type        = string
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "puppet-dynamodb-otp"
}

variable "token" {
  description = "Otp token (random) string"
  type        = string
}

variable "ttl" {
  description = "TTL to set for otp tokens"
  default     = 300
}