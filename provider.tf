terraform {
  backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate126"
    container_name        = "tstate"
    key                   = " 7iSYsDRv83HyhEg90myOdVG56CkVPxBd4gnFOELXrPebuYtdHi8fqOWGrGQcR17jTWzEMAvlDpBKdnMWFI1kBg=="
  }
}

# Configure the Azure provider
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "westus"
  tags = {
        environment = "Terraform Demo"
    }
}
