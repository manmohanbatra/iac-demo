resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "westus"

    tags = {
        environment = "Terraform Demo"
    }
   
    backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate09762"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}
