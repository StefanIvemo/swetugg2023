// Template to refresh the audiences Bicep knowledge and show some basic syntax

@maxLength(10)
param namePrefix string

param location string = resourceGroup().location

@allowed([
  'Premium_LRS'
  'Standard_LRS'
])
@description('Name of the Storage Account SKU')
param skuName string

param unUsedParameter int

var storageName = '${namePrefix}${uniqueString(deployment().name)}'

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: 'westeurope'
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

module keyVault 'modules/keyvault_generic.bicep' = {
  name: 'keyVaultDeploy'
  params: {
    name: 'steffes-swetugg-kv'
    location: location
  }
}

output id string = storage.id
