# APPLICATION #
variable "ENVIRONMENT" {
  type        = string
  description = "Enviroment of infrastructure"
}

# AWS #
variable "AVAILABILITY_ZONES" {
  type        = list(string)
  description = "AWS availability zones"
}

variable "REGION" {
  type        = string
  description = "Region where aws will create resources"
}

variable "PROFILE" {
  type        = string
  description = "Profile of aws"
}

variable "ACCESS_KEY" {
  type        = string
  description = "AWS access key"
}

variable "SECRET_KEY" {
  type        = string
  description = "AWS secret key"
}

# DYNAMO  
variable "DYNAMO_TABLE_NAME" {
  type        = string
  description = "DynamoDB table name"
}

# LAMBDA
variable "LAMBDA_FUNCTION_NAME" {
  type        = string
  description = "Lambda function name"
}
