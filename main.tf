resource "google_compute_instance" "hu19-sid-vm" {
  name         = "hu19-siddharth-vm"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

}
resource "google_compute_subnetwork" "siddharth-hu19-privatesubnet" {
  name          = "sid-hu19-privatesubnet"
  ip_cidr_range = "10.1.8.0/21"
  network       = var.network
  region        = "us-central1-a"
}