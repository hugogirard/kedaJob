param location string
param suffix string


resource arc 'Microsoft.ContainerRegistry/registrie@2022-02-01-preview' = {
  name: 'acr${suffix}'
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}
