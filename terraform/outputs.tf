output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg.name
}

output "web_app_name" {
  description = "Web App Name"
  value       = azurerm_linux_web_app.app.name
}

output "web_app_url" {
  description = "Web App default hostname"
  value       = "https://${azurerm_linux_web_app.app.default_hostname}"
}

output "service_plan_id" {
  description = "App Service Plan ID"
  value       = azurerm_service_plan.plan.id
}
