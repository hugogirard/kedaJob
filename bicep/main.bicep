targetScope='subscription'

@description('The location where the resources will be deployed')
param location string

var rgName = 'rg-spoke-keda'

var suffix = uniqueString(rg.id)

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

module acr 'modules/registry/acr.bicep' = {
  scope: resourceGroup(rg.name)
  name: 'acr'
  params: {
    location: location
    suffix: suffix
  }
}

module aks 'modules/aks/aks.bicep' = {
  scope: resourceGroup(rg.name)
  name: 'aks'
  params: {
    location: location
    suffix: suffix
  }
}

