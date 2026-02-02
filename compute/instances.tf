# GCP Compute Engine Instance Configuration

resource "google_compute_instance" "default" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.this.id
    subnetwork = google_compute_subnetwork.this.id

    access_config {
      # Allocate a static IP
    }
  }

  metadata = {
    enable-oslogin = "TRUE"
  }

  tags = ["http-server", "https-server"]

  service_account {
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "secondary" {
  name         = "terraform-instance-2"
  machine_type = "e2-micro"
  zone         = "${var.region}-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.this.id
    subnetwork = google_compute_subnetwork.this.id

    access_config {
      # Allocate a static IP
    }
  }

  metadata = {
    enable-oslogin = "TRUE"
  }

  tags = ["http-server", "https-server"]

  service_account {
    scopes = ["cloud-platform"]
  }
}
