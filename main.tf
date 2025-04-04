provider "google" {
  credentials = file(var.credentials_file)
  project     = "tokyo-scholar-455804-v8"
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "default" {
  name         = "instance-terraform-vm"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"  # Bookworm
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt update
    apt install -y nginx
    systemctl enable nginx
    systemctl start nginx
  EOF
}
