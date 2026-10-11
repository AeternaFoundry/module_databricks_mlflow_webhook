resource "databricks_mlflow_webhook" "mlflow_webhooks" {
  for_each = var.mlflow_webhooks

  events      = each.value.events
  description = each.value.description
  model_name  = each.value.model_name
  status      = each.value.status

  dynamic "http_url_spec" {
    for_each = each.value.http_url_spec != null ? [each.value.http_url_spec] : []
    content {
      authorization           = http_url_spec.value.authorization
      enable_ssl_verification = http_url_spec.value.enable_ssl_verification
      secret                  = http_url_spec.value.secret
      url                     = http_url_spec.value.url
    }
  }

  dynamic "job_spec" {
    for_each = each.value.job_spec != null ? [each.value.job_spec] : []
    content {
      access_token  = job_spec.value.access_token
      job_id        = job_spec.value.job_id
      workspace_url = job_spec.value.workspace_url
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

