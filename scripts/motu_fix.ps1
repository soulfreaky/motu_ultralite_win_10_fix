#Uninstall drivers
$b = Get-WmiObject -Class win32_product -ComputerName $env:computername -Filter "Name like '%MOTU%'"
$b.Uninstall()
#Uninstall devices
get-wmiobject -Query "select * from win32_systemdriver where caption LIKE 'MOTU%'" | ForEach-Object  { 
    $_.StopService()
    $_.Delete()
    }
#Removeghosts
. "$(split-path -parent $MyInvocation.MyCommand.Definition)\removeGhosts.ps1" -filterByFriendlyName @("MOTU")
Restart-Computer -Confirm
