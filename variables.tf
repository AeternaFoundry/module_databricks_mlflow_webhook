variable "mlflow_webhooks" {
  description = <<EOT
Map of mlflow_webhooks, attributes below
Required:
    - events
Optional:
    - description
    - model_name
    - status
    - http_url_spec (block):
        - authorization (optional)
        - enable_ssl_verification (optional)
        - secret (optional)
        - url (required)
    - job_spec (block):
        - access_token (required)
        - job_id (required)
        - workspace_url (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    events      = list(string)
    description = optional(string)
    model_name  = optional(string)
    status      = optional(string)
    http_url_spec = optional(object({
      authorization           = optional(string)
      enable_ssl_verification = optional(bool)
      secret                  = optional(string)
      url                     = string
    }))
    job_spec = optional(object({
      access_token  = string
      job_id        = string
      workspace_url = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

