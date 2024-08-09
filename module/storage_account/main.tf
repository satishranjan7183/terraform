resource "azurerm_storage_account" "lgstr" {
  for_each = var.lgstrmap
  name = each.key
  location = each.value.location
  account_tier =each.value.account_tier
  resource_group_name = each.value.resource_group_name  
  account_replication_type = each.value.account_replication_type
}