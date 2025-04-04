provider "google" {
  credentials = file(var.credentials_file)
  project     = "tokyo-scholar-455804" # Hardcoded project ID
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "default" {
  name         = "nginx-web"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access
