variable "project_id" {
  description = "L'ID de votre projet GCP"
  type        = string
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "machine_type" {
  default = "e2-medium" # Minimum pour faire tourner GitLab
}