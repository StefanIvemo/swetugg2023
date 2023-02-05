
# Publish module to registry 
bicep publish ./modules/keyvault_generic.bicep --target br:swetugg2023.azurecr.io/keyvault:v1.0

# Publish module to registry using alias
bicep publish ./modules/keyvault_generic.bicep --target br/swetuggModules:keyvault:v1.1