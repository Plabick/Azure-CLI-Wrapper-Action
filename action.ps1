param (
    [Parameter(Mandatory = $false)]$username = $env:username ,
    [Parameter(Mandatory = $false)]$tenant = $env:tenant,
    [Parameter(Mandatory = $false)]$password = $env:password,
    [Parameter(Mandatory = $false)]$command = $env:command 
)
az login --service-principal -u $username -p $password --tenant $tenant
Write-Host "-----Logged In -----"
Invoke-Expression $command