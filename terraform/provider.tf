terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tf-state"
    storage_account_name = "tfstatekishore123" # must exist
    container_name       = "tfstate"
    key                  = "realworld.tfstate"
  }
}

provider "azurerm" {
  features {}
}
