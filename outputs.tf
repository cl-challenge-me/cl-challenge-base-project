output "project_id" {
  value = google_project.project.project_id
}

output "network_id" {
  value = google_compute_network.main.id
}

output "subnets" {
  value = google_compute_subnetwork.subnets
}