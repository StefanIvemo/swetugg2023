@description('The resource name')
param name string
@description('The geo-location where the resource lives')
param location string

resource cae 'Microsoft.App/managedEnvironments@2022-06-01-preview' existing = {
  name: 'swetugg-cae'
}

resource ca 'Microsoft.App/containerApps@2022-06-01-preview' = {
  name: name 
  location: location
  properties:  {
    environmentId: cae.id
    configuration: {
      activeRevisionsMode: 'Single'
      ingress: {
        external: true
        targetPort: 80
      }
    }
    template: {
      containers: [
        {
          name: 'simple-hello-world-container'
          image: 'mcr.microsoft.com/azuredocs/containerapps-helloworld:latest'
          resources: {
            cpu: json('0.25')
            memory: '.5Gi'
          }
        }
      ]
      scale: {
         minReplicas: 0
      }
    }
  }
}

output resourceId string = ca.id
output uri string = ca.properties.latestRevisionFqdn
