output "network_security_server_tls_policies_id" {
  description = "Map of id values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no id are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_security_server_tls_policies_allow_open" {
  description = "Map of allow_open values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no allow_open are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.allow_open if v.allow_open != null }
}
output "network_security_server_tls_policies_create_time" {
  description = "Map of create_time values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no create_time are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "network_security_server_tls_policies_deletion_policy" {
  description = "Map of deletion_policy values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_security_server_tls_policies_description" {
  description = "Map of description values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no description are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_security_server_tls_policies_effective_labels" {
  description = "Map of effective_labels values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_security_server_tls_policies_labels" {
  description = "Map of labels values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no labels are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_security_server_tls_policies_location" {
  description = "Map of location values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no location are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.location if v.location != null && length(v.location) > 0 }
}
output "network_security_server_tls_policies_mtls_policy" {
  description = "Map of mtls_policy values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no mtls_policy are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => one(v.mtls_policy) if v.mtls_policy != null && length(v.mtls_policy) > 0 }
}
output "network_security_server_tls_policies_name" {
  description = "Map of name values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no name are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_security_server_tls_policies_project" {
  description = "Map of project values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no project are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_security_server_tls_policies_server_certificate" {
  description = "Map of server_certificate values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no server_certificate are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => one(v.server_certificate) if v.server_certificate != null && length(v.server_certificate) > 0 }
}
output "network_security_server_tls_policies_terraform_labels" {
  description = "Map of terraform_labels values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "network_security_server_tls_policies_update_time" {
  description = "Map of update_time values across all network_security_server_tls_policies, keyed the same as var.network_security_server_tls_policies except keys with no update_time are omitted"
  value       = { for k, v in google_network_security_server_tls_policy.network_security_server_tls_policies : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

