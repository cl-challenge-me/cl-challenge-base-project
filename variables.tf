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

variable "billing_account" {
  description = "Billing account to be used for the project"
  type        = string
}