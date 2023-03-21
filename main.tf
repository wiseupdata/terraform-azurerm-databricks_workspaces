resource "azurerm_resource_group" "this" {
  name     = local.rg_name
  location = var.location

  # Only create the resource group if no name is specified by the user
  count = var.rg_name != "auto-create" ? 0 : 1
}

resource "azurerm_databricks_workspace" "this" {
  count                         = length(local.names)
  name                          = local.names[count.index]
  resource_group_name           = var.rg_name != "auto-create" ? var.rg_name : azurerm_resource_group.this[0].name
  location                      = var.location
  sku                           = var.sku
  public_network_access_enabled = var.public_access
  managed_resource_group_name   = local.new_managed_rg_dbs_names[count.index]

  custom_parameters {
    storage_account_name     = local.new_dbs_stg_names[count.index]
    storage_account_sku_name = var.new_stg_sku
  }
  tags = var.default_tags

  depends_on = var.resource_group_name != "auto-create" ? null : [azurerm_resource_group.this[0]]

}
