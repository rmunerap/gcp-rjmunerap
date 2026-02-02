resource "google_compute_firewall" "allow_http" {
  name    = "allow-http-${var.network_name}" # Nombre dinámico para evitar duplicados
  network = var.network_name               # Usa la variable, no el recurso directo

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}