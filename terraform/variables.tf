variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-realworld-devops"
}

variable "app_service_plan_name" {
  description = "App Service Plan name"
  type        = string
  default     = "realworld-plan"
}

variable "web_app_name" {
  description = "Web App name (must be globally unique)"
  type        = string
  default     = "realworld-node-kishore123"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}
