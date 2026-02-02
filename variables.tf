variable "project_id" {
  description = "ID del proyecto en GCP"
  type        = string
}

variable "region" {
  default = "us-east1"
}

provider "google" {
  project = var.project_id
  region  = var.region
}