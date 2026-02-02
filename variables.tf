variable "project_id" {
  description = "El ID del proyecto de Google Cloud"
  type        = string
  }

variable "region" {
  description = "Región por defecto para los recursos"
  type        = string
  default     = "us-east1"
}