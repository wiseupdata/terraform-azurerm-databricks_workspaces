resource "azurerm_databricks_workspace" "this" {
  count                         = length(local.names)
  name                          = local.names[count.index]
  resource_group_name           = var.rg_name
  location                      = var.location
  sku                           = var.sku
  public_network_access_enabled = var.public_access
  managed_resource_group_name   = local.new_managed_rg_dbs_names[count.index]

  custom_parameters {
    storage_account_name     = local.new_dbs_stg_names[count.index]
    storage_account_sku_name = var.new_stg_sku
  }
  tags = var.default_tags
}
