// *** Resource Group ***
// This section defines the properties of the Azure Resource Group where the resources will be deployed.
resource_group_name = "rg-az-container_registery"
location = "canadacentral"  // Location where the resource group will be created
tags = {
  Enviroment = "dev"  // Tags for categorizing the resource group
}

// *** Azure Container Registery (ACR) Values ***
// This section defines the properties of the Azure Container Registry.
acr_name            = "testacrname13"  // Name of the container registry
sku                 = "Premium"  // Pricing tier of the container registry
admin_enabled       = false  // Admin user access to the container registry

// *** Georeplications-1 Values ***
// This section defines the properties of the first georeplication for the Azure Container Registry.
georeplications_1_location = "East US"  // Location of the georeplication
zone_redundancy_1_enabled = true  // Enable zone redundancy for the georeplication
georeplications_1_tags = {}  // No specific tags defined for this georeplication.

// *** Georeplications-2 Values ***
// This section defines the properties of the second georeplication for the Azure Container Registry.
georeplications_2_location = "North Europe"  // Location of the georeplication
zone_redundancy_2_enabled = true  // Enable zone redundancy for the georeplication
georeplications_2_tags = {}  // No specific tags defined for this georeplication.
