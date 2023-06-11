variable "db_username" {
  description = "The username for the RDS instance"
}

variable "db_password" {
  description = "The password for the RDS instance"
  sensitive   = true
}

variable "aws_region" {
  description = "region where instance will launch"
  default     = "us-east-1"
}