
variable "aws_region" {
  description = "region where instance will launch"
  default     = "us-east-1"
}

variable "db_username" {
  description = "Username for the RDS database"
}

variable "db_password" {
  description = "Password for the RDS database"
}