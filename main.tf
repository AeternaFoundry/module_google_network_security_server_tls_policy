resource "google_network_security_server_tls_policy" "network_security_server_tls_policies" {
  for_each = var.network_security_server_tls_policies

  name            = each.value.name
  allow_open      = each.value.allow_open
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  location        = each.value.location
  project         = each.value.project

  dynamic "mtls_policy" {
    for_each = each.value.mtls_policy != null ? [each.value.mtls_policy] : []
    content {
      dynamic "client_validation_ca" {
        for_each = mtls_policy.value.client_validation_ca != null ? mtls_policy.value.client_validation_ca : []
        content {
          dynamic "certificate_provider_instance" {
            for_each = client_validation_ca.value.certificate_provider_instance != null ? [client_validation_ca.value.certificate_provider_instance] : []
            content {
              plugin_instance = certificate_provider_instance.value.plugin_instance
            }
          }
          dynamic "grpc_endpoint" {
            for_each = client_validation_ca.value.grpc_endpoint != null ? [client_validation_ca.value.grpc_endpoint] : []
            content {
              target_uri = grpc_endpoint.value.target_uri
            }
          }
        }
      }
      client_validation_mode         = mtls_policy.value.client_validation_mode
      client_validation_trust_config = mtls_policy.value.client_validation_trust_config
    }
  }

  dynamic "server_certificate" {
    for_each = each.value.server_certificate != null ? [each.value.server_certificate] : []
    content {
      dynamic "certificate_provider_instance" {
        for_each = server_certificate.value.certificate_provider_instance != null ? [server_certificate.value.certificate_provider_instance] : []
        content {
          plugin_instance = certificate_provider_instance.value.plugin_instance
        }
      }
      dynamic "grpc_endpoint" {
        for_each = server_certificate.value.grpc_endpoint != null ? [server_certificate.value.grpc_endpoint] : []
        content {
          target_uri = grpc_endpoint.value.target_uri
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

