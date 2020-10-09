# Subnets
variable "web_2a" {
  type = object({
    id = string
  })
}

variable "web_2c" {
  type = object({
    id = string
  })
}

# Security Group
variable "webSecurityGroup" {
  type = object({
    id = string
    name = string
  })
}
