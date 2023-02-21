output "project_id" {
  value = google_project.project.project_id
}

output "network_id" {
  value = google_compute_network.main.id
}

output "subnet_id" {
  value = google_compute_subnetwork.main-subnet.id
}