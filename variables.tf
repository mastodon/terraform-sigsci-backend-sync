variable "fastly_service_vcl_active_version" {
  description = "Currently active version of the VCL service to sync to the WAF"
  type        = string
}

variable "fastly_sid" {
  description = "Fastly Service ID"
  type        = string
}

variable "site_short_name" {
  description = "Site short name"
  type        = string
}
