variable "region" {
  type        = string
  description = "Región de AWS"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  type        = string
  description = "10.0.0.0/16"
}

variable "subnet_publica_cidr" {
  type        = string
  description = "10.0.1.0/24"
}

variable "subnet_privada_cidr" {
  type        = string
  description = "10.0.2.0/24"
}

variable "nombre_proyecto" {
  type        = string
  description = "proyectp-integrador-enma"
}