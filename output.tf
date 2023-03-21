output "databricks_id" {
  description = "List with Databricks IDs"
  value       = [for i in azurerm_databricks_workspace.this : i.id]
}

output "databricks_url" {
  description = "List with Databricks main URLs"
  value       = [for i in azurerm_databricks_workspace.this : i.workspace_url]
}

output "databricks_name" {
  description = "List with Databricks names"
  value       = local.names
}

output "resource_group_name" {
  description = "List with Databricks names"
  value       = local.rg_name
}