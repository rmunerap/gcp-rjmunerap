resource "google_compute_network" "this" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "this" {
  name          = "${var.network_name}-subnet"
  ip_cidr_range = var.ip_range
  region        = var.region
  network       = google_compute_network.this.id
}