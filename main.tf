resource "sigsci_edge_deployment_service_backend" "backend" {
  fastly_service_vcl_active_version = var.fastly_service_vcl_active_version
  fastly_sid                        = var.fastly_sid
  site_short_name                   = var.site_short_name
}
