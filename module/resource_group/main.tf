resource "azurerm_resource_group" "lgresgroup" {
    for_each = var.lgresmap
name = each.key
location = each.value
}