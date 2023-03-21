variable "rg_name" {
  description = "The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created "
  type        = string
  default     = "auto-create"
}

variable "company_name" {
  description = "The name of the company."
  type        = string
  default     = "wiseupdata"
}

variable "company_abrv" {
  description = "The name of the abbreviation."
  type        = string
  default     = "edf"
}

variable "app_name" {
  description = "The name of the application, dbs is the abbreviation to Databricks"
  type        = string
  default     = "dbs"
}

variable "areas" {
  description = "Areas to created the workspaces, one per area"
  type        = list(string)
  default     = ["data", "mkt"]
}

variable "location" {
  description = "Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created."
  type        = string
  default     = "ukwest"
}

variable "env" {
  description = "System environment."
  type        = string
  default     = "dev"
}

variable "sku" {
  description = "The SKU to create the workspace. Premium is required to anable the Unit Catalog."
  type        = string
  default     = "premium"
}

variable "public_access" {
  description = "Public access to the workspace."
  type        = bool
  default     = true
}

variable "new_stg_sku" {
  description = "The sku for the new storage account that will be created to databricks management"
  type        = string
  default     = "Standard_LRS"
}

variable "default_tags" {
  description = "Default tags for all resources"
  type        = map(string)
  default = {
    "managed_by" = "terraform"
  }
}

locals {

  rg_name = var.rg_name != "auto-create" ? var.rg_name : "rg-dbs-workspaces-${var.company_name}-${var.env}"

  # Default names for the Databricks
  names = [for i in var.areas : "${var.app_name}-${var.company_name}-${i}-${var.env}"]

  # Databricks managed storage account names
  new_dbs_stg_names = [for i in var.areas : "stgdbs${var.company_abrv}${i}${var.env}"]

  # The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created
  new_managed_rg_dbs_names = [for i in var.areas : "rg-managed-dbs-${var.company_name}-${i}-${var.env}"]
}
