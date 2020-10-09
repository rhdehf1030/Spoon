provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "ap-northeast-2"
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}