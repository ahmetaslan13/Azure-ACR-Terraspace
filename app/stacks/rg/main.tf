// *** Create Resource Group ***
module "resource_group" {
  // Use the "resource_group" module to create an Azure Resource Group.

  // Source of the module.
  source = "../../modules/resource_group"

  // Name of the Azure Resource Group to be created.
  resource_group_name = var.resource_group_name

  // Location for the Azure Resource Group.
  location = var.location

  // Tags to associate with the Azure Resource Group.
  tags = var.tags
}
