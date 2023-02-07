
$parameters=@{
    ResourceGroupName = 'swetugg-2023-rg'
    TemplateFile = '.\lambdas\lambda.bicep'
}   

New-AzResourceGroupDeployment @parameters
