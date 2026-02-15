resource "google_compute_firewall" "allow_gitlab" {
  name    = "allow-gitlab-traffic"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }

  source_ranges = ["0.0.0.0/0"] # Attention : en prod, restreignez à votre IP
  target_tags   = ["gitlab-server"]
}