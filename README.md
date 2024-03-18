# Mastodon Terraform - Fastly Service for Mastodon Applications

Terraform module for syncing Fastly origin configuration with Signal Sciences' WAF.

When taking advantage of Signal Science's web application firewall, the WAF is essentially inserted as an "origin" in the request chain (client request -> Fastly -> WAF -> origin). This means that, if changes are made to the origin configuration (for example, origin timeouts), the WAF needs to be made aware of these changes and updated with the configuration. This module is intended to be used alongside the [fastly module](https://github.com/mastodon/terraform-fastly-service) when also taking advantage of the WAF.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_sigsci"></a> [sigsci](#requirement\_sigsci) | ~> 2.1.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sigsci"></a> [sigsci](#provider\_sigsci) | ~> 2.1.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sigsci_edge_deployment_service_backend.backend](https://registry.terraform.io/providers/signalsciences/sigsci/latest/docs/resources/edge_deployment_service_backend) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fastly_service_vcl_active_version"></a> [fastly\_service\_vcl\_active\_version](#input\_fastly\_service\_vcl\_active\_version) | Currently active version of the VCL service to sync to the WAF | `string` | n/a | yes |
| <a name="input_fastly_sid"></a> [fastly\_sid](#input\_fastly\_sid) | Fastly Service ID | `string` | n/a | yes |
| <a name="input_site_short_name"></a> [site\_short\_name](#input\_site\_short\_name) | Site short name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Signal Sciences resource |
