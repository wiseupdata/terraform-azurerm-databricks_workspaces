<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="Wise Up Data's Instagram" width="22px" src="https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/instagram.png" />   
</a> 
<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="wise Up Data's Discord" width="22px" src="https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/discord.svg" />
</a>
<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="wise Up Data | Twitter" width="22px" src="https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/twitter.svg" />
</a>
<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="wise Up Data's LinkedIN" width="22px" src="https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/6b3dc41c772ba34c80e0bcb7485044db43e5d2a2/assets/linkedin.svg" />
</a>

![visitors](https://visitor-badge.glitch.me/badge?page_id=wiseupdata.terraform-azurerm-databricks_workspaces&left_color=green&right_color=black)
![GitHub](https://img.shields.io/github/license/wiseupdata/terraform-azurerm-databricks_workspaces)

---

<h1>
<img align="left" alt="DP-203" src="https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/terraform.png" width="100" />

Module - Databricks workspaces in Azure 🚀️

</h1>

> Create multiples work spaces

<br>

## Example 1 - Production read!

main.tf

```
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
  areas = ["data", "sales"]
}
```

- Auto-generated tags
- Auto-generated resource group
- Apply's the Standard, environment as a suffix

## Simple use test ❤️

> with az cli logged and with the right permissions! `az login` 👀️

Create a new directory.

```
mkdir tmp && cd tmp 
```

Create the main file with some infos.

```
cat <<EOF > main.tf
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
}

provider "azurerm" {
  features {}
}

output "databricks_workspaces_outputs" {
  value = module.databricks_workspaces
}
EOF
```

Create the resources in Azure.

```
terraform init
terraform fmt -recursive
terraform validate
terraform plan -out plan.output
terraform apply plan.output
```

Check the result.

---

![](https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/20230321_211722_image.png)


![](https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/20230321_211843_image.png)

---

# Clean the resources

```
terraform destroy -auto-approve
cd ..
rm -Rf tmp
```

## Example for hello world!

main.tf

```
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
}
```

## Suggestion to  production!

main.tf

```
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
  areas   = ["data", "mkt"]
  rg_name = "my_rg_name"
  company_name = "company_name"
  company_abrv = "company_abbreviation"
}
```

# References

1. [Wise Up Data - Github](https://github.com/wiseupdata)

---

<br>

# Troubleshoot 😕

Recreate a workspace!

```
# Find all your resources!
terraform state list 

# Recreate the one with issue
terraform apply -replace=module.azure_main.module.databricks_workspaces.azurerm_databricks_workspace.this[0]
```
