resource "azurerm_storage_account" "storage" {
  name = "storage${ lower(var.project) }${ lower(var.environment) }"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  account_replication_type =  "LRS"
  account_tier = "Standard"
  tags = var.tags
}
