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

resource "google_project_service" "services" {
  project                    = google_project.project.project_id
  for_each                   = toset(var.services)
  service                    = each.key
  disable_dependent_services = true
  depends_on = [
    google_project.project
  ]
}