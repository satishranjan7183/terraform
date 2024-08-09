resource "azurerm_virtual_network" "lgvirnet" {
  for_each = var.lgvirnetmap
  name=each.key
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  address_space = each.value.address_space
}