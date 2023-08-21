// *** Azure Container Registry (ACR) ***

// Define the Azure Container Registry resource
resource "azurerm_container_registry" "az_container_registry" {
  // Name of the container registry
  name = var.acr_name

  // Resource group in which the container registry will be created
  resource_group_name = var.resource_group_name

  // Location (region) where the container registry will be provisioned
  location = var.location

  // SKU (pricing tier) of the container registry
  sku = var.sku

  // Enable or disable admin user access to the container registry
  admin_enabled = var.admin_enabled

  // Define georeplications for the container registry
  georeplications {
    // Location of the georeplication
    location = var.georeplications_1_location

    // Enable or disable zone redundancy for the georeplication
    zone_redundancy_enabled = var.zone_redundancy_1_enabled
    // Tags associated with the georeplication
    tags = var.georeplications_1_tags

    // Add additional georeplication if needed
    /*
  georeplications {
    location                = var.georeplications_2_location
    zone_redundancy_enabled = var.zone_redundancy_2_enabled
    tags                    = var.georeplications_2_tags
  }
  */
  }
}