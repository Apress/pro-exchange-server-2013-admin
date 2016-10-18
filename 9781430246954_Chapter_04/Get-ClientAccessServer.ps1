Get-ClientAccessServer -Identity AMS-EXCH01 | Set-ClientAccessServer -AutoDiscoverServiceInternalUri https://autodiscover.contoso.com/autodiscover/autodiscover.xml

Get-ClientAccessServer | Set-ClientAccessServer -AutoDiscoverServiceInternalUri https://autodiscover.contoso.com/autodiscover/autodiscover.xml

