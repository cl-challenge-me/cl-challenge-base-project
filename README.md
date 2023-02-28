# About
This Terraform code incapsulates common code for the base project creation.
Use version tags when referencing this code.
# Details
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_network.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_project_metadata.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_project_metadata) | resource |
| [google_compute_subnetwork.subnets](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_service.services](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [random_id.id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | Billing account to be used for the project | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Project's parent folder ID | `string` | n/a | yes |
| <a name="input_ip_cidr_ranges"></a> [ip\_cidr\_ranges](#input\_ip\_cidr\_ranges) | IP CIDR range list for the subnets in regions | `list(any)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Project name | `string` | n/a | yes |
| <a name="input_regions"></a> [regions](#input\_regions) | Regions list | `list(any)` | n/a | yes |
| <a name="input_services"></a> [services](#input\_services) | List of APIs that should be enabled in the project | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | n/a |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | n/a |
| <a name="output_subnets"></a> [subnets](#output\_subnets) | n/a |
<!-- END_TF_DOCS -->