resource "google_compute_instance" "gitlab_vm" {
  name         = "gitlab-instance"
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["gitlab-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 30 # GitLab est gourmand en espace disque
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Attribue une IP publique automatique
    }
  }

  # Installation automatique de Docker au démarrage
  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
  EOT
}