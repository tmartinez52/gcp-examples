resource "google_compute_instance" "default" {
  name         = "centos-vm"
  machine_type = "g1-small"
  zone         = "us-central1-a"
  tags         = ["ssh"]

  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-8"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
resource "google_compute_instance" "rhel" {
  name         = "rhel-vm"
  machine_type = "g1-small"
  zone         = "us-central1-a"
  tags         = ["ssh"]

  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = "rhel-cloud/rhel-8"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}