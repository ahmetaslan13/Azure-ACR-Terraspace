// *** Resource Group Variables ***
variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the resources will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be provisioned."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the Azure resources."
  type        = map(any)
}

// *** Azure Container Registery (ACR) Variables ***
variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "sku" {
  description = "The SKU (stock-keeping unit) of the Azure Container Registry."
  type        = string
}

variable "admin_enabled" {
  description = "Specifies whether admin user authentication is enabled for the Azure Container Registry."
  type        = bool
}

// *** Georeplications-1 Variables ***
variable "georeplications_1_location" {
  description = "The location for the first georeplication of the Azure Container Registry."
  type        = string
}

variable "zone_redundancy_1_enabled" {
  description = "Specifies whether zone redundancy is enabled for the first georeplication."
  type        = string
}

variable "georeplications_1_tags" {
  description = "A map of tags to apply to the first georeplication of the Azure Container Registry."
  type        = map(any)
}

// *** Georeplications-2 Variables ***
// variable "georeplications_2_location" {
//   description = "The location for the second georeplication of the Azure Container Registry."
//   type        = string
// }
// variable "zone_redundancy_2_enabled" {
//   description = "Specifies whether zone redundancy is enabled for the second georeplication."
//   type        = string
// }
// variable "georeplications_2_tags" {
//   description = "A map of tags to apply to the second georeplication of the Azure Container Registry."
//   type        = map(any)
// }
