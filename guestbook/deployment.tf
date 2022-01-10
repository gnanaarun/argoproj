##Configuring Terraform Backend
terraform {   
 backend "azurerm" {
 resource_group_name   = bcai-test-poc
 storage_account_name  = bcaipocstg
 container_name        = tfback
 key                   = rs.tf
 }
}
resource "azurerm_resource_group" "example" {
  name     = "var.resource_group_name"
  location = "West Europe"
}