# Change_vdir_Settings.ps1
# You can use this small script to change the virtual directories on your exchange (2013) server
# starting point is split DNS, so internalURL and externalURL are identical
#
# usage: .\Change_vdir_settings.ps1 contoso.com
# 

$ServerName = $env:COMPUTERNAME
$Domain = $args[0]
$Server = "webmail"

$External = $Server +"." + $Domain
$AutoD = "autodiscover." + $Domain

Write-Host "The following FQDN will be used for configuring the virtual directories: " $External
Write-Host "The following FQDN will be used for configuring autodiscover: " $AutoD

Get-OWAVirtualDirectory -Server $ServerName | Set-OWAVirtualDirectory -ExternalURL https://$External/owa -InternalURL https://$External/owa
Get-ECPVirtualDirectory -Server $ServerName | Set-ECPVirtualDirectory -ExternalURL https://$External/ecp -InternalURL https://$External/ecp
Get-ActiveSyncVirtualDirectory -server $ServerName | Set-ActiveSyncVirtualDirectory -ExternalURL https://$External/Microsoft-Server-ActiveSync -InternalURL https://$External/Microsoft-Server-ActiveSync
Get-WebServicesVirtualDirectory -Server $ServerName | Set-WebServicesVirtualDirectory -ExternalURL https://$External/ews/exchange.asmx -InternalURL https://$External/ews/exchange.asmx
Get-OABVirtualDirectory -Server $ServerName | Set-OABVirtualDirectory -ExternalURL https://$External/OAB -InternalURL https://$External/OAB

Get-PowershellVirtualDirectory -Server $ServerName | Set-PowershellVirtualDirectory -ExternalURL https://$External/Powershell -InternalURL https://$External/Powershell

Get-ClientAccessServer -Identity $ServerName | Set-ClientAccessServer -AutoDiscoverServiceInternalUri https://$AutoD/autodiscover/autodiscover.xml

Get-OutlookAnywhere -Server $ServerName | Set-OutlookAnywhere -ExternalHostname $External -ExternalClientsRequireSsl:$true -ExternalClientAuthenticationMethod:Basic -InternalHostName $External -InternalClientsRequireSsl:$true -InternalClientAuthenticationMethod:Basic

Write-Host "Do not forget to issue an IISRESET command."

