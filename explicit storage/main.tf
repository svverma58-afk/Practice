resource "azurerm_resource_group" "Enterprise" {
  name     = "Enterprise_RG"
  location = "West US"
}

resource "azurerm_storage_account" "smallfile" {
  depends_on               = [azurerm_resource_group.Enterprise]
  name                     = "smallfilestorage"
  resource_group_name      = "Enterprise_RG"
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "GRS"


}