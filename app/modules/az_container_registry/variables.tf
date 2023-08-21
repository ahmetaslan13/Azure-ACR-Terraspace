// *** Azure Container Registry (ACR) Variables ***
variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the Azure Container Registry will be created."
  type        = string
}
variable "location" {
  description = "The Azure region where the Azure Container Registry and its associated resources will be deployed."
  type        = string
}
variable "sku" {
  description = "The SKU (pricing tier) of the Azure Container Registry."
  type        = string
}
variable "admin_enabled" {
  description = "Indicates whether the admin user is enabled for the Azure Container Registry."
  type        = bool
}

// *** Georeplications-1 Variables ***
variable "georeplications_1_location" {
  description = "The location for the first georeplication of the Azure Container Registry."
  type        = string
}
variable "zone_redundancy_1_enabled" {
  description = "Indicates whether zone redundancy is enabled for the first georeplication."
  type        = string
}
variable "georeplications_1_tags" {
  description = "Tags to associate with the first georeplication of the Azure Container Registry."
  type        = map(any)
}

// *** Georeplications-2 Variables ***
# variable "georeplications_2_location" {
#   description = "The location for the second georeplication of the Azure Container Registry."
#   type        = string
# }
# variable "zone_redundancy_2_enabled" {
#   description = "Indicates whether zone redundancy is enabled for the second georeplication."
#   type        = string
# }
# variable "georeplications_2_tags" {
#   description = "Tags to associate with the second georeplication of the Azure Container Registry."
#   type        = map(any)
# }
