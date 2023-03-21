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

<a name="readme-top"></a>

<h1>
<img align="left" alt="DP-203" src="https://raw.githubusercontent.com/wiseupdata/terraform-azurerm-databricks_workspaces/main/assets/terraform.png" width="100" />

Module - Databricks workspaces in Azure.
</h1>

<br>


Simple example:

main.tf
```
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
}
```

```
terraform init
terraform fmt - recursive
terraform validate
terraform plan -output plan.output
terraform apply plan.output
```

# Clean the resource.

```
terraform destroy
rm main.tf
```


# References

1. [Wise Up Data - Github](https://github.com/wiseupdata)

---

<br>

