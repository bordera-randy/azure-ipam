
# Sign in Interactively
Connect-AzAccount

# Example with Subscription Name
Set-AzContext -Subscription "Duck Creek On Demand Development" -WarningAction Ignore

# Sign in Interactively
az login

# Example with Subscription Name
az account set --subscription "Duck Creek On Demand Development"

$ResourceNames = @{
  functionName = 'UNC-DEV-AZIPAM-fn'
  appServicePlanName = 'UNC-DEV-AZIPAM-ASP'
  cosmosAccountName = 'UNC-DEV-AZIPAM-COSMOSDB'
  cosmosContainerName = 'UNC-DEV-AZIPAM-CN'
  cosmosDatabaseName = 'UNC-DEV-AZIPAM-DB'
  keyVaultName = 'UNC-DEV-AZIPAM-KV'
  workspaceName = 'UNC-DEV-AZIPAM-WS'
  managedIdentityName = 'UNCDEVAZIPAMID'
  resourceGroupName = 'UNC-DEV-AZIPAM-RG'
  storageAccountName = 'uncdevazipamstrg'
}

./deploy.ps1 `
  -Location "northcentralus" `
  -ResourceNames $ResourceNames
  -AsFunction