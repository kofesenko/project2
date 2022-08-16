variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "availability_zone" {
  type        = list(string)
  description = "Availability Zone used by subnet"
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "default_route" {
  type        = string
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}

variable "inbound_ports" {
  type        = list(string)
  description = "List of the inbound ports for Security Group"
  default     = ["22", "80"]
}