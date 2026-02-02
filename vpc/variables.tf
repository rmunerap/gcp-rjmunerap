variable "network_name" {
  type        = string
  description = "Nombre de la red VPC que viene desde el main.tf raíz"
}

# Ya que estás ahí, asegúrate de tener las otras que usas en el main raíz:
variable "ip_range" {
  type        = string
}

variable "region" {
  type        = string
}