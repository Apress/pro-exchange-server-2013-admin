Set-OWAVirtualDirectory -Identity van-cas2013\owa* -InternalURL https://webmail.contoso.com/owa -ExternalURL https://webmail.contoso.com/owa

Set-ECPVirtualDirectory -Identity van-cas2013\ecp* -InternalURL https://webmail.contoso.com/ecp -ExternalURL https://webmail.contoso.com/ecp

Set-ActiveSyncVirtualDirectory -Identity van-cas2013\microsoft* -InternalURL https://webmail.contoso.com/Microsoft-Server-ActiveSync -ExternalURL https://webmail.contoso.com/Microsoft-Server-ActiveSync

Set-WebServicesVirtualDirectory -Identity van-cas2013\ews* -InternalURL https://webmail.contoso.com/ews/exchange.asmx -ExternalURL https://webmail.contoso.com/ews/exchange.asmx

Set-OABVirtualDirectory -Identity van-cas2013\oab* -InternalURL https://webmail.contoso.com/OAB -ExternalURL https://webmail.contoso.com/OAB

Set-PowershellVirtualDirectory -Identity "van-cas2013\powershell (def*" -InternalURL https://webmail.contoso.com/Powershell -ExternalURL ttps://webmail.contoso.com/Powershell

Set-ClientAccessServer -Identity van-cas2013 -AutodiscoverServiceInternalUri https://autodiscover.contoso.com/autodiscover/autodiscover.xml

Set-OutlookAnywhere -Identity van-cas2013\rpc* -InternalHostname webmail.contoso.com -InternalClientsRequireSSL $true -ExternalHostname webmail.contoso.com -ExternalClientsRequireSSL $true -ExternalClientAuthenticationMethod Basic