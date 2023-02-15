resource "google_project" "project" {
  name = var.name
  folder_id = var.folder_id
}