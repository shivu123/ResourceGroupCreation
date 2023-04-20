terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "79bb5726-3587-4eae-928c-c33280a96aaa"

}


resource "azurerm_resource_group" "rg" {
  location = "eastus"
  name     = "TestRG"
}