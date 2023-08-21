// *** Resource Group Variables ***

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "Location where the Azure Resource Group will be created."
  type        = string
}

variable "tags" {
  description = "Tags to associate with the Azure Resource Group."
  type        = map(any)
}
