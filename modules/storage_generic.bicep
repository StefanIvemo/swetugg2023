@description('Name of the storage account, maximum 24 characters, must be globally unique.')
param name string

@description('Resource location, default value is resourceGroup().location')
param location string = resourceGroup().location

@allowed([
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GRS'
  'Standard_GZRS'
  'Standard_LRS'
  'Standard_RAGRS'
  'Standard_RAGZRS'
  'Standard_ZRS'
])
@description('Name of the Storage Account SKU')
param skuName string

resource storageAccounts 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: name
  location: location
  sku: {
    name: skuName
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    supportsHttpsTrafficOnly: true
    allowBlobPublicAccess: false
  }
}

output name string = storageAccounts.name
output id string = storageAccounts.id
