# main.tf (Raíz)
terraform {
  backend "gcs" {
    bucket  = "test-rjmunerap-tfstate-bucket"
    prefix  = "terraform/state"
  }
}

module "red_desarrollo" {
  source       = "./vpc" # Ruta a tu carpeta
  network_name = "vpc-dev"
  ip_range     = "10.0.1.0/24"
  region       = "us-central1"
  }

module "red_produccion" {
  source       = "./vpc"
  network_name = "vpc-prod"
  ip_range     = "10.0.2.0/24"
  region       = "us-east1"
 }