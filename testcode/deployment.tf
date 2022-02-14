##Configuring Terraform Backend

provider "azurerm" {
features {}
subscription_id = "64238fe1-943b-49f8-bff3-9a61736c81af"
client_id = "ac1f500e-95e2-42b7-a8b4-3a7c484816f2"
client_secret = "7857ec04-a137-40ba-9871-fbf8b578dba8"
tenant_id = "0ae51e19-07c8-4e4b-bb6d-648ee58410f4" 
}

terraform {
backend "azurerm" {
resource_group_name = bcai-tf-rg
storage_account_name = bcaitfstg
container_name = bcaictnr
key = storage.tfstate
}
}

##Creation of Resource Group
resource "azurerm_resource_group" "ocbirg" {
name = bcaitest-rg
location = Southeast Asia
}
