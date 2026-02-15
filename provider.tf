terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  # Pour que GitHub Actions puisse lire l'état du bucket
  backend "gcs" {
    bucket  = "mon-bucket-tfstate-unique" 
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = "devops-cours-487214" 
  region  = "europe-west1"
}
