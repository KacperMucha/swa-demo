param location string = 'westeurope'
param siteName string = 'swa-demo-1'
param repositoryUrl string = 'https://github.com/KacperMucha/swa-demo'
param branch string = 'main'

resource swa 'Microsoft.Web/staticSites@2022-09-01' = {
  name: siteName
  location: location
  properties: {
    provider: 'GitHub'
    repositoryUrl: repositoryUrl
    branch: branch
    allowConfigFileUpdates: true
  }
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}
