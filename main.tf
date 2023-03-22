resource "azurerm_resource_group" "this" {

  # Only create the resource group if no name is specified by the user
  count = var.existent_rg_name != "auto-create" ? 0 : 1

  name     = local.rg_name
  location = var.location
  tags     = local.default_tags

}

resource "azurerm_databricks_workspace" "this" {
  count                         = length(local.names)
  name                          = local.names[count.index]
  resource_group_name           = var.existent_rg_name != "auto-create" ? var.existent_rg_name : azurerm_resource_group.this[0].name
  location                      = var.location
  sku                           = var.sku
  public_network_access_enabled = var.public_access
  managed_resource_group_name   = local.new_managed_rg_dbs_names[count.index]

  custom_parameters {
    storage_account_name     = local.new_dbs_stg_names[count.index]
    storage_account_sku_name = var.new_stg_sku
  }

  tags = merge(local.default_tags, {
    area : var.areas[count.index]
  })

}
