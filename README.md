# Mastodon Terraform - Fastly Service for Mastodon Applications

Terraform module for syncing Fastly origin configuration with Signal Sciences' WAF.

When taking advantage of Signal Science's web application firewall, the WAF is essentially inserted as an "origin" in the request chain (client request -> Fastly -> WAF -> origin). This means that, if changes are made to the origin configuration (for example, origin timeouts), the WAF needs to be made aware of these changes and updated with the configuration. This module is intended to be used alongside the [fastly module](https://github.com/mastodon/terraform-fastly-service) when also taking advantage of the WAF.
