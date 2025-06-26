resource "azurerm_linux_function_app" "notifications" {
  name = "notifications-serverless-${ var.project }-${ var.environment }"
  resource_group_name = azurerm_resource_group.rg.name
  location = var.location
  service_plan_id = azurerm_service_plan.front-office-ecommerce.id

  storage_account_name = azurerm_storage_account.storage.name

  site_config {
    application_stack {
      python_version = "3.13"
    }
  }
}

resource "azurerm_linux_function_app" "payments" {
  name = "payments-serverless-${ var.project }-${ var.environment }"
  resource_group_name = azurerm_resource_group.rg.name
  location = var.location
  service_plan_id = azurerm_service_plan.front-office-ecommerce.id

  storage_account_name = azurerm_storage_account.storage.name

  site_config {
    application_stack {
      python_version = "3.13"
    }
  }
}
