resource "azurerm_resource_group" "Enterprise" {
  name     = "Enterprise_RG"
  location = "West US"
}

terraform {
  backend "azurerm" {
    resource_group_name   = "Enterprise_RG"
    storage_account_name  = "smallfilestorage"
    container_name        = "smallcontainer"
    key                   = "terraform.tfstate"
  }
}


resource "azurerm_storage_account" "smallfile" {
  depends_on               = [azurerm_resource_group.Enterprise]
  name                     = "smallfilestorage"
  resource_group_name      = "Enterprise_RG"
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "GRS"


}