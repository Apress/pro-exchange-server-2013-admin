New-EdgeSubscription -FileData ([byte[]]$(Get-Content -Path "C:\Temp\edge01.xml" -Encoding Byte -ReadCount 0)) -Site "Default-First-Site-Name" -CreateInternetSendConnector $true -CreateInboundSendConnector $true

Start-EdgeSynchronization

