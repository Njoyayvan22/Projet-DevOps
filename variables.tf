variable "project_id" {
  description = "devops-cours-487214"
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