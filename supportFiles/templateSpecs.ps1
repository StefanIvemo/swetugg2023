# Create a template spec named storageSpec in resource group swetugg-2023-rg
$parameters=@{
    Name = 'storageSpec'
    Version = '1.0'
    ResourceGroupName = 'swetugg-2023-rg'
    Location = 'westeurope'
    TemplateFile = './modules/storage_generic.bicep'
    Tag=@{Dept="Integrations";Environment="Production"}
}

New-AzTemplateSpec @parameters

# Deploy storage account using template spec
$id = (Get-AzTemplateSpec -Name 'storageSpec' -ResourceGroupName 'swetugg-2023-rg' -Version '1.0').Versions.Id

$mySpec = @{
    TemplateSpecId = $id
    ResourceGroupName = 'swetugg-2023-rg'
}

New-AzResourceGroupDeployment @mySpec