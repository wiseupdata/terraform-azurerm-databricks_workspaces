<a href="https://github.com/wiseupdata/microsoft-data-engineering">
  <img align="left" alt="Wise Up Data's Instagram" width="22px" src="assets/instagram.png" />   
</a> 
<a href="https://github.com/wiseupdata/microsoft-data-engineering">
  <img align="left" alt="wise Up Data's Discord" width="22px" src="assets/discord.svg" />
</a>
<a href="https://github.com/wiseupdata/microsoft-data-engineering">
  <img align="left" alt="wise Up Data | Twitter" width="22px" src="assets/twitter.svg" />
</a>
<a href="https://github.com/wiseupdata/microsoft-data-engineering">
  <img align="left" alt="wise Up Data's LinkedIN" width="22px" src="assets/linkedin.svg" />
</a>

![visitors](https://visitor-badge.glitch.me/badge?page_id=wiseupdata.microsoft-data-engineering&left_color=green&right_color=black) 
![license](https://img.shields.io/github/license/wiseupdata/microsoft-data-engineering?style=plastic)

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
terraform fmt
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

1. [Exam reference - 2023](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4MbYT?WT.mc_id=Azure_BoM-wwl)
1. [Exam details](https://learn.microsoft.com/en-us/certifications/exams/dp-203/)
1. [Course DP-203T00: Data Engineering on Microsoft Azure](https://learn.microsoft.com/en-us/training/courses/dp-203t00?WT.mc_id=Azure_BoM-wwl)
1. [The journey to Microsoft Certified](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWxODZ)
1. [Azure Free Sandbox - Azure Function App](https://learn.microsoft.com/en-us/training/modules/execute-azure-function-with-triggers/4-create-timer-trigger?pivots=csharp)

---

<br>

