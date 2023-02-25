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

variable "regions" {
  description = "Regions list"
  type        = list(any)
}

variable "ip_cidr_ranges" {
  description = "IP CIDR range list for the subnets in regions"
  type        = list(any)
}