resource "azurerm_resource_group" "res21" {
  name = "hp"
  location = "east us"
}
resource "azurerm_virtual_network" "vnet22" {
  name = "vnet11"
  address_space = [ "10.0.0./16" ]
  resource_group_name = azurerm_resource_group.res21.name
  location = azurerm_resource_group.res21.location
}