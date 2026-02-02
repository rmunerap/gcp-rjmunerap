resource "google_compute_network" "vpc_network" {
  name                    = "bolivar-vpc"
  # ¿Qué atributo pondrías aquí para que no cree subredes automáticamente?
  auto_create_subnetworks = ________ 
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "bolivar-subnet-private"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
  
  # Atributo clave para que la subred pueda acceder a APIs de Google sin IP pública
  private_ip_google_access = true 
}