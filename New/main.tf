resource "azurerm_resource_group" "symphony" {
  name     = "symphony_rg"
  location = "West Europe"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}