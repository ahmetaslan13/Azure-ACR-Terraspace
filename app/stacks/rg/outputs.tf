// *** Resource Group Stack Outputs ***

// Resource Group Name output from the resource group module.
output "resource_group_name" {
  description = "Name of the Azure Resource Group from the resource group module."
  value       = module.resource_group.name
}
