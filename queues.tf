resource "azurerm_storage_queue" "notifications" {
  name = "notification-queue-${ var.project }-${ var.environment }" 
  storage_account_name = azurerm_storage_account.storage.name
}

resource "azurerm_storage_queue" "payments" {
  name = "payments-queue-${ var.project }-${ var.environment }" 
  storage_account_name = azurerm_storage_account.storage.name
}
