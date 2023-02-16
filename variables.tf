variable "name" {
  description = "Project name"
  type        = string
}

variable "folder_id" {
  description = "Project's parent folder ID"
  type        = string
}

variable "services" {
  description = "List of APIs that should be enabled in the project"
  type        = list(string)
}