$Data = New-ExchangeCertificate -FriendlyName "Contoso SSL Certificate" -GenerateRequest -SubjectName "c=US, o=Contoso, cn=webmail.contoso.com" -DomainName webmail.contoso.com,autodiscover.contoso.com -PrivateKeyExportable $true

Set-Content -path "\\ams-ad01\mgmtshare\SSLCertRequest.req" -Value $Data

Import-ExchangeCertificate –Server AMS-EXCH01 -FileData ([Byte[]]$(Get-Content -Path "\\ams-ad01\mgmtshare\certnew.cer" -Encoding byte -ReadCount 0)) | Enable-ExchangeCertificate -Server AMS-EXCH01 -Services IIS
