resource "google_compute_firewall" "allow_http" {
  name    = "allow-http-bolivar"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"] # Tráfico desde internet
  
  # ¿Cómo vinculas esta regla solo a las instancias con el tag 'http-server'?
  target_tags   = [http-server] 
}