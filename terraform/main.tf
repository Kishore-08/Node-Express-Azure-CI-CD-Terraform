# ================================
# Resource Group
# ================================
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = var.environment
    project     = "realworld-devops"
  }
}

# ================================
# App Service Plan
# ================================
resource "azurerm_service_plan" "plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"

  tags = {
    environment = var.environment
  }
}

# ================================
# Linux Web App
# ================================
resource "azurerm_linux_web_app" "app" {
  name                = var.web_app_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  https_only = true

  site_config {
    application_stack {
      node_version = "18-lts"
    }

    always_on = false
  }

  app_settings = {
    WEBSITES_PORT = "3000"
    NODE_ENV      = var.environment
  }

  tags = {
    environment = var.environment
    project     = "realworld-devops"
  }
}
