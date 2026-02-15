resource "google_storage_bucket" "my_bucket" {
  name          = "nom-unique-votre-bucket-devops" # Doit être unique au monde
  location      = "EU"
  force_destroy = true # Permet de supprimer le bucket même s'il contient des fichiers

  public_access_prevention = "enforced"
}