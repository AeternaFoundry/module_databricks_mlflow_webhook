output "mlflow_webhooks_id" {
  description = "Map of id values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no id are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mlflow_webhooks_description" {
  description = "Map of description values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no description are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mlflow_webhooks_events" {
  description = "Map of events values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no events are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => v.events if v.events != null && length(v.events) > 0 }
}
output "mlflow_webhooks_http_url_spec" {
  description = "Map of http_url_spec values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no http_url_spec are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => one(v.http_url_spec) if v.http_url_spec != null && length(v.http_url_spec) > 0 }
  sensitive   = true
}
output "mlflow_webhooks_job_spec" {
  description = "Map of job_spec values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no job_spec are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => one(v.job_spec) if v.job_spec != null && length(v.job_spec) > 0 }
  sensitive   = true
}
output "mlflow_webhooks_model_name" {
  description = "Map of model_name values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no model_name are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => v.model_name if v.model_name != null && length(v.model_name) > 0 }
}
output "mlflow_webhooks_provider_config" {
  description = "Map of provider_config values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no provider_config are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "mlflow_webhooks_status" {
  description = "Map of status values across all mlflow_webhooks, keyed the same as var.mlflow_webhooks except keys with no status are omitted"
  value       = { for k, v in databricks_mlflow_webhook.mlflow_webhooks : k => v.status if v.status != null && length(v.status) > 0 }
}

