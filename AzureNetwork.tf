# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "Azure01" {
  name     = "Azure01-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "network1" {
  name                = "network1-prd"
  resource_group_name = azurerm_resource_group.network1.name
  location            = azurerm_resource_group.network1.location
  address_space       = ["10.0.2.0/14"]
}
