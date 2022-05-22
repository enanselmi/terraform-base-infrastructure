variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "ssh_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 22
}

variable "vpc_cidr" {
  default = "10.200.0.0/16"
}

variable "public_subnets" {
  default = ["10.200.0.0/24", "10.200.1.0/24"]
}

variable "private_subnets" {
  default = ["10.200.2.0/24", "10.200.3.0/24"]
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "region" {
  default = "us-east-1"
}
