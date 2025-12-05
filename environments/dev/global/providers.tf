terraform {
  required_version = ">= 1.5.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"  
    storage_account_name = "techfusionterraform" 
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
}