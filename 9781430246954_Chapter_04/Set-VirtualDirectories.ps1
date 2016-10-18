Set-OWAVirtualDirectory -Identity AMS-EXCH01 -ExternalURL https://webmail.contosol.com/owa -InternalURL https://webmail.contoso.com/owa

Set-OWAVirtualDirectory -Identity AMS-EXCH01 -ExternalURL https://webmail.contosol.com/owa -InternalURL https://webmail.contoso.com/owa

Set-ECPVirtualDirectory -ExternalURL https://webmail.contoso.com/ecp -InternalURL https://webmail.contoso.com/ecp

Set-ActiveSyncVirtualDirectory -ExternalURL https://webmail.contoso.com/Microsoft-Server-ActiveSync -InternalURL https://webmail.contoso.com/Microsoft-Server-ActiveSync

Set-WebServicesVirtualDirectory -ExternalURL https://webmail.contoso.com/ews/Exchange.asmx -InternalURL https://webmail.contoso.com/ews/Exchange.asmx

Set-OABVirtualDirectory -ExternalURL https://webmail.contoso.com/OAB -InternalURL https://webmail.contoso.com/OAB

Set-PowershellVirtualDirectory -ExternalURL https://webmail.contoso.com/Powershell -InternalURL https://webmail.contoso.com/Powershell
