output "front-office-server" {
  description = "front office web service plan name"
  value = azurerm_service_plan.front-office-ecommerce.name
}

output "front-office-ui" {
  description = "UI web app"
  value = azurerm_linux_web_app.ui.name
}

output "front-office-api" {
  description = "API web app"
  value = azurerm_linux_web_app.api.name
}

output "cache-redis" {
  description = "Cache database"
  value = azurerm_redis_cache.cache.name
}

output "cache-redis-hostname" {
  description = "dns"
  value = azurerm_redis_cache.cache.hostname
}

output "cache-redis-port" {
  description = "dns"
  value = azurerm_redis_cache.cache.port
}

output "queue-storage" {
  description = "storage for queues"
  value = azurerm_storage_account.storage.name
}

output "notification-queue" {
  description = "async notification operations queue"
  value = azurerm_storage_queue.notifications.name
}

output "payments-queue" {
  description = "async payments operations queue"
  value = azurerm_storage_queue.payments.name
}

output "notifications-serverless" {
  description = "serverless notifications function"
  value = azurerm_linux_function_app.notifications.name
}

output "payments-serverless" {
  description = "serverless payments function"
  value = azurerm_linux_function_app.payments.name
}
