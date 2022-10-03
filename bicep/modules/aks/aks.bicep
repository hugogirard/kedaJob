param location string
param suffix string

var k8sVersion = '1.23.12'

resource aks 'Microsoft.ContainerService/managedClusters@2022-06-01' = {
  name: 'aks${suffix}'
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    kubernetesVersion: k8sVersion
    enableRBAC: false
    dnsPrefix: 'aks${suffix}'
    agentPoolProfiles: [
      {
        name: 'agentpool'
        count: 1
        enableAutoScaling: false
        vmSize: 'Standard_B4ms'
        osType: 'Linux'
        type: 'VirtualMachineScaleSets'
        mode: 'System'
        maxPods: 110        
      }
    ]
    networkProfile: {
      networkPlugin: 'kubenet'
    }    
  }
}
