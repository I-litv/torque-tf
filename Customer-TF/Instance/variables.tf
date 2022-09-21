variable "name" {
  type    = string
  default = "My Instance"
}

variable "db_user" {
  type    = string
  default = "example_db_user"
  sensitive = false
}

variable "db_pass" {
  type    = string
  sensitive = true
  default = "example_db_password"
}

variable "s3_bucket" {
  type    = string
  default = "my-app-bucket"
}
variable "aws_region" {
  type    = string
  default = "us-west-2"
}
