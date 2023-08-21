// *** Create Resource Group ***
// This comment indicates the beginning of the section that creates an Azure Resource Group.

// Defining the module "resource_group" and its source location.
module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name // Specifies the name of the Azure Resource Group.
  location            = var.location            // Specifies the geographic location for the Resource Group.
  tags                = var.tags                // Tags to label and categorize the Resource Group.
}

// *** Create Azure Container Registry (ACR) ***
// This comment marks the start of the section responsible for creating an Azure Container Registry.

// Defining the module "az_container_registry" and its source location.
module "az_container_registry" {
  source = "../../modules/az_container_registry"

  // Configuring settings for the Azure Container Registry.
  acr_name            = var.acr_name                   // Specifies the name of the Azure Container Registry.
  resource_group_name = module.resource_group.name     // References the name of the previously created Resource Group.
  location            = module.resource_group.location // References the location of the Resource Group.
  sku                 = var.sku                        // Specifies the SKU (pricing tier) of the Azure Container Registry.
  admin_enabled       = var.admin_enabled              // Specifies whether admin user access is enabled.

  // *** Georeplication-1 ***
  // This comment denotes the beginning of the configuration for the first georeplication.

  georeplications_1_location = var.georeplications_1_location // Specifies the location for the first georeplication.
  zone_redundancy_1_enabled  = var.zone_redundancy_1_enabled  // Specifies whether zone redundancy is enabled.
  georeplications_1_tags     = var.georeplications_1_tags     // Tags for labeling the first georeplication.

  // *** Georeplication-2 ***
  // Uncomment and configure this section to enable an additional georeplication.

  // georeplications_2_location = var.georeplications_2_location
  // zone_redundancy_2_enabled  = var.zone_redundancy_2_enabled
  // georeplications_2_tags     = var.georeplications_2_tags
}
