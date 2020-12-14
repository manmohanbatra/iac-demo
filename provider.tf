resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "westus"

    tags = {
        environment = "Terraform Demo"
    }
   
    # Configure the Azure provider
provider "azurerm" { 
  # The "feature" block is required for AzureRM provider 2.x. 
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}
terraform {
    backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate09762"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}
}
