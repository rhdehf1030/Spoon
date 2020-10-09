# VPC
variable "spoon" {
  type = object({
    id = string
  })
}

# Security Group
variable "webSecurityGroup"{
    type = object({
      id = string
      name = string
    })
}

# Subnets
variable "dmz_2a" {
  type = object({
    id = string
  })
}

variable "dmz_2c" {
  type = object({
    id = string
  })
}

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

# Instances
variable "webapp1" {
  type = object({
    id = string
  })
}

variable "webapp2" {
  type = object({
    id = string
  })
}