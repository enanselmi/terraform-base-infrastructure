variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "ssh_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  type        = string
}

variable "public_subnets" {
  description = "CIDR list for public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "CIDR list for private subnets"
  type        = list(string)
}

variable "azs" {
  description = "List of AZs"
  type        = list(string)
}

variable "region" {
  description = "Region to deploy resources"
  type        = string
}
