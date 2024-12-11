

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }

}

provider "azurerm" {
  features {}
  subscription_id = "1c7c7357-6d0d-4bd4-9401-0ecbf555933d"
}
