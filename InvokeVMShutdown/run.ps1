# Input bindings are passed in via param block.
param($Timer)

# Get the current universal time in the default string format
$currentUTCtime = (Get-Date).ToUniversalTime()

# az group list --query "[?location=='uksouth']" -o table
Write-Host "Process list of VM's"

$PSVersionTable
# Get-InstalledModule -Name Az
try {
   
    Get-AzVM -ResourceGroupName "rg-core"
    Get-AzVM -ResourceGroupName "rg-core" -Status
}
catch {
    {1:<#Do this if a terminating exception happens#>}
}


# The 'IsPastDue' porperty is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

# Write an information log with the current time.
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"
