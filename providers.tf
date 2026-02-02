terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" # Define la versión para evitar cambios inesperados
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}