output "databricks_id" {
  description = "Databricks ID"
  value       = azurerm_databricks_workspace.this.id
}

output "databricks_url" {
  description = "Databricks main URL"
  value       = azurerm_databricks_workspace.this.workspace_url
}