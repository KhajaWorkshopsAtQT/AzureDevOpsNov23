terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "agent"
    storage_account_name = "qtstate"
    container_name       = "tfstate"
    key                  = "demo.terraform.tfstate"
    
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}