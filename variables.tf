variable "network_security_server_tls_policies" {
  description = <<EOT
Map of network_security_server_tls_policies, attributes below
Required:
    - name
Optional:
    - allow_open
    - deletion_policy
    - description
    - labels
    - location
    - project
    - mtls_policy (block):
        - client_validation_ca (optional, block):
            - certificate_provider_instance (optional, block):
                - plugin_instance (required)
            - grpc_endpoint (optional, block):
                - target_uri (required)
        - client_validation_mode (optional)
        - client_validation_trust_config (optional)
    - server_certificate (block):
        - certificate_provider_instance (optional, block):
            - plugin_instance (required)
        - grpc_endpoint (optional, block):
            - target_uri (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    allow_open      = optional(bool)
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    location        = optional(string)
    project         = optional(string)
    mtls_policy = optional(object({
      client_validation_ca = optional(list(object({
        certificate_provider_instance = optional(object({
          plugin_instance = string
        }))
        grpc_endpoint = optional(object({
          target_uri = string
        }))
      })))
      client_validation_mode         = optional(string)
      client_validation_trust_config = optional(string)
    }))
    server_certificate = optional(object({
      certificate_provider_instance = optional(object({
        plugin_instance = string
      }))
      grpc_endpoint = optional(object({
        target_uri = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

