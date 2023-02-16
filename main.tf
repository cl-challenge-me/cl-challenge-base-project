resource "random_id" "id" {
  byte_length = 2
}

resource "google_project" "project" {
  name = var.name
  project_id = format(
    "%s-%s", 
    lower(var.name), 
    random_id.id.dec
  )
  folder_id = var.folder_id
}