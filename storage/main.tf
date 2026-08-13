resource "azurerm_resource_group" "Sound" {
  name     = "Sound_RG"
  location = "West US"
}

resource "azurerm_storage_account" "soundstore" {
  name                     = "soundstorage"
  resource_group_name      = azurerm_resource_group.Sound.name
  location                 = azurerm_resource_group.Sound.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


}