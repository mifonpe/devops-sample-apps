variable "region" {
  default     = "eu-west-1"
  type        = string
  description = "AWS region"
}


variable "namespace" {
  default = "test"
  type    = string
}

variable "name" {
  default = "pagantis"
  type    = string
}

variable "stage" {
  default = "dev"
  type    = string
}

variable "mantainer" {
  default = "mifonpe@gmail.com"
  type    = string
}

