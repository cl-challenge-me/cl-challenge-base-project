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
  folder_id       = var.folder_id
  billing_account = var.billing_account

  auto_create_network = false
}

resource "google_compute_project_metadata" "default" {
  project = google_project.project.project_id

  metadata = {
    enable-oslogin = "TRUE"
  }
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

resource "google_compute_network" "main" {
  project                 = google_project.project.project_id
  name                    = "main"
  auto_create_subnetworks = false
  depends_on = [
    google_project_service.services
  ]
}

resource "google_compute_subnetwork" "main-subnet" {
  for_each                 = toset(var.regions)
  project                  = google_project.project.project_id
  name                     = "main-${each.key}-subnet"
  ip_cidr_range            = var.ip_cidr_ranges[index(var.regions, each.key)]
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}