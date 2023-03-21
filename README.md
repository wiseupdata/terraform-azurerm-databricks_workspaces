<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="Wise Up Data's Instagram" width="22px" src="assets/instagram.png" />   
</a> 
<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="wise Up Data's Discord" width="22px" src="assets/discord.svg" />
</a>
<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="wise Up Data | Twitter" width="22px" src="assets/twitter.svg" />
</a>
<a href="https://github.com/wiseupdata/terraform-azurerm-databricks_workspaces">
  <img align="left" alt="wise Up Data's LinkedIN" width="22px" src="assets/linkedin.svg" />
</a>

![visitors](https://visitor-badge.glitch.me/badge?page_id=wiseupdata.terraform-azurerm-databricks_workspaces&left_color=green&right_color=black) 
![license](https://img.shields.io/github/license/wiseupdata/terraform-azurerm-databricks_workspaces?style=plastic)

---

<a name="readme-top"></a>

<h1>
<img align="left" alt="DP-203" src="assets/terraform.png" width="100" />

# Module - Databricks workspaces in Azure.
</h1>

<br>


Simple example:

main.tf
```
module "rg" {
  source       = "wiseupdata/simple-resource-group/azurerm"
  version      = "v0.0.1"
  company_name = "wiseupdata"
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

