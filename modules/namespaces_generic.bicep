@description('Name of the Service Bus Namespace')
param name string

@description('Resource location, default value is resourceGroup().location')
param location string = resourceGroup().location

@description('Name of the SKU')
@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param sku string

@allowed([
  1
  2
  4
])
param capacity int = 1

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2022-01-01-preview' = {
  name: name
  location: location
  sku: {
    name: sku
    capacity: capacity // this will not work for all SKUs, add a condition
    tier: sku
  }
  properties: {
    minimumTlsVersion: '1.2'
    zoneRedundant: true // this will not work for all SKUs, add a condition
    disableLocalAuth: true
  }
}
